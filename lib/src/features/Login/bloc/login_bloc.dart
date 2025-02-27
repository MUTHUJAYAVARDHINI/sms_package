import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sms_package/src/common/service/log_service/log_service.dart';
import 'package:sms_package/src/core/bloc_core/ui_status.dart';
import 'package:sms_package/src/data/network/dio/login_dio_module.dart';
import 'package:sms_package/src/data/repository/domainRepository/domain_repository.dart';
import 'package:sms_package/src/data/repository/ipRepository/categories_repository.dart';
import 'package:sms_package/src/data/repository/loginRepository/login_repository.dart';
import 'package:sms_package/src/features/Login/data/domainData/domain_data.dart';
import 'package:sms_package/src/features/Login/data/forgotPassword/forgot_password_response.dart';
import 'package:sms_package/src/features/Login/data/ipData/ip_data.dart';
import 'package:sms_package/src/features/Login/data/userLogin/user_login_response.dart';


part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required CategoriesRepository categoriesRepository,
    required DomainRepository domainRepository,
    required LoginRepository loginRepository,
    required LogService logService,
  }) : super(
    const LoginState(),
  ) {
    _categoriesRepository = categoriesRepository;
    _domainRepository = domainRepository;
    _loginRepository = loginRepository;
    _log = logService;

    on<_GetIPdataRequested>(_onGetIPdata);
    on<_sendDemodata>(_domainNamedata);
    on<_GetLoginIdValidation>(_onGetLoginIdValidateData);
    on<_sendPassword>(_sendPasswordData);
    on<_forgotPassword>(_forgotPasswordData);
    on<_resetPassword>(_resetPasswordData);
    on<_confirmPassword>(_confirmPasswordData);
  }

  late final CategoriesRepository _categoriesRepository;
  late final DomainRepository _domainRepository;
  late final LoginRepository _loginRepository;
  late final LogService _log;
  String? email;
  String? password;
  String? entityCode;
  String? tenantCode;
  String? countryCode;

  FutureOr<void> _onGetIPdata(_GetIPdataRequested event,
      Emitter<LoginState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
          status: const UILoading(),
        ),
      );
      var ipdata = await _categoriesRepository.getIPData();

      emit(
         state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          ipData: ipdata,
        ),
      );
      final requestData = {
        "domainName": "demo.simpldocz.com",
        "subDomainName": "auth/login",
        "whitelistedIpAddresses": state.ipData?.ip,
      };

      add(LoginEvent.sendDomainName(requestData));
    } catch (e, s) {
      _log.e('CategoriesBloc OnGetCategories failed', e, s);

      emit(
        state.copyWith(
          isBusy: false,
          status: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }
  FutureOr<void> _onGetLoginIdValidateData(_GetLoginIdValidation event,
      Emitter<LoginState> emit,) async {
    var ipData;
    try {
      emit(
        state.copyWith(
          isBusy: true,
          status: const UILoading(),
        ),
      );

      print("____Called");
      var ipdata = await _loginRepository.getLoginIdValidation(event.validationData);

      ipData = ipdata;
      emit(
        state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          UserData: ipdata,
          showPasswordField: true,
        ),
      );

    } catch (e, s) {
      _log.e('LoginBloc failed', e, s);
      // var ipdata = await _loginRepository.getLoginIdValidation(event.validationData);
      // var ipdata = await _loginRepository.getLoginIdValidation(event.validationData);
      print("-------${ipData}");
      emit(
        state.copyWith(
          isBusy: false,
          status: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }

  FutureOr<void> _forgotPasswordData(_forgotPassword event,
      Emitter<LoginState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
          status: const UILoading(),
        ),
      );
      var ipdata = await _loginRepository.forgotPassword(event.forgotPassword);

      emit(
        state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          ForgotData: ipdata,
          showPasswordField: true,
        ),
      );
      LoginDioModule.clearSensitiveData();

    } catch (e, s) {
      _log.e('CategoriesBloc OnGetCategories failed', e, s);

      emit(
        state.copyWith(
          isBusy: false,
          status: UILoadFailed(message: e.toString()),
        ),
      );
      LoginDioModule.clearSensitiveData();
    }
  }

  FutureOr<void> _confirmPasswordData(_confirmPassword event,
      Emitter<LoginState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
          status: const UILoading(),
        ),
      );

      var ipdata = await _loginRepository.confirmPassword(event.confirmPassword);

      emit(
        state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          ForgotData: ipdata,
          showPasswordField: true,
        ),
      );
      LoginDioModule.clearSensitiveData();

    } catch (e, s) {
      _log.e('CategoriesBloc OnGetCategories failed', e, s);

      emit(
        state.copyWith(
          isBusy: false,
          status: UILoadFailed(message: e.toString()),
        ),
      );
      LoginDioModule.clearSensitiveData();
    }
  }

  FutureOr<void> _resetPasswordData(_resetPassword event,
      Emitter<LoginState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
          status: const UILoading(),
        ),
      );
      var ipdata = await _loginRepository.resetPassword(event.resetPassword);

      emit(
        state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          ForgotData: ipdata,
          showPasswordField: true,
        ),
      );
      LoginDioModule.clearSensitiveData();

    } catch (e, s) {
      _log.e('CategoriesBloc OnGetCategories failed', e, s);

      emit(
        state.copyWith(
          isBusy: false,
          status: UILoadFailed(message: e.toString()),
        ),
      );
      LoginDioModule.clearSensitiveData();
    }
  }

  FutureOr<void> _sendPasswordData(_sendPassword event,
      Emitter<LoginState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
          status: const UILoading(),
        ),
      );
      var ipdata = await _loginRepository.sendPasswordValidation(event.validationPassword);
    print(ipdata);
      emit(
        state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          UserData: ipdata,
          showPasswordField: true,
        ),
      );

    } catch (e, s) {
      _log.e('CategoriesBloc OnGetCategories failed', e, s);

      emit(
        state.copyWith(
          isBusy: false,
          status: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }

  FutureOr<void> _domainNamedata(_sendDemodata event,
      Emitter<LoginState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
          status: const UILoading(),
        ),
      );
      var domainData = await _domainRepository.sendDomainData(event.data);

      print("domainData-------->${domainData.countryCode}");

      emit(
        state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          domainData: domainData,
        ),
      );


    } catch (e, s) {
      _log.e('CategoriesBloc OnGetCategories failed', e, s);

      emit(
        state.copyWith(
          isBusy: false,
          status: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }
}
