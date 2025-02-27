

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sms_package/src/helper/app_config.dart';
import 'package:sms_package/src/injector/injector.dart';



class LoginDioModule {
  LoginDioModule._();

  static const String dioInstanceName = 'loginInstanceName';
  static final GetIt _injector = Injector.instance;
  static String? userEnteredOtp;
  static String? userEnteredPassword;

  static void setup() {
    _setupDio();
  }

  static void setOtp(String otp) {
    userEnteredOtp = otp;
  }

  static void setPassword(String password) {
    print(password);
    userEnteredPassword = password;
  }

  static void clearSensitiveData() {
    userEnteredOtp = null;
    userEnteredPassword = null;
  }

  static void _setupDio() {
    /// Dio
    _injector.registerLazySingleton<Dio>(
          () {
        final Dio dio = Dio(
          BaseOptions(
            baseUrl: AppConfig.loginAPIUrl,
            headers: {
              'channel': "UI",
            },
          ),
        );
        print("_______${userEnteredPassword}");
        dio.interceptors.add(InterceptorsWrapper(
          onRequest: (options, handler) {
            if (options.path.contains('usermasterlogin')) {
              if (options.data is String) {
                try {
                  final body = jsonDecode(options.data) as Map<String, dynamic>;
                  print("_______${userEnteredOtp}");
                  if (body['userPassword']?.isEmpty ?? true && userEnteredOtp == null && userEnteredOtp!.isEmpty) {
                    options.headers['action'] = 'verifyUserId';
                    options.headers['otp'] = '1';
                  } else if(userEnteredOtp != null && userEnteredOtp!.isNotEmpty){
                    options.headers['action'] = 'otpVerification';
                    options.headers['otp'] = userEnteredOtp;
                  } else{
                    options.headers['action'] = 'passwordVerification';
                    options.headers['otp'] = '1';
                  }
                } catch (e) {
                  print('Error decoding request body: $e');
                }
              }
            }
            else if(options.path.contains('forgetpassword')){
              print("_________, ${userEnteredPassword}");

              if (userEnteredOtp != null && userEnteredOtp!.isNotEmpty && userEnteredPassword == null) {
                print(userEnteredOtp);
                options.headers['otp'] = userEnteredOtp;
                options.headers['action'] = 'FV';
              } else if (userEnteredPassword != null && userEnteredPassword!.isNotEmpty){
                options.headers['action'] = 'FC';
                options.headers['otp'] = userEnteredOtp;
              }else{
                options.headers['action'] = 'FR';
                options.headers['otp'] = '1';
              }
            }

            options.headers['action'] ??= 'defaultAction';

            return handler.next(options);
          },
        ));
        if (!kReleaseMode) {
          dio.interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
              request: false,
            ),
          );
        }
        return dio;
      },
      instanceName: dioInstanceName,
    );
  }

}
