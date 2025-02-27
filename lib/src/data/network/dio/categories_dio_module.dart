

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:sms_package/src/injector/injector.dart';
import '../../../helper/app_config.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';



class CategoriesDioModule {
  CategoriesDioModule._();

  static const String dioInstanceName = 'categoriesDioInstance';
  static final GetIt _injector = Injector.instance;

  static void setup() {
    _setupDio();
  }

  static void _setupDio() {
    /// Dio
    _injector.registerLazySingleton<Dio>(
          () {
        final Dio dio = Dio(
          BaseOptions(
            baseUrl: AppConfig.baseURL,
          ),
        );
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