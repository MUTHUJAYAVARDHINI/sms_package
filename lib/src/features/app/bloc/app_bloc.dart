import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sms_package/src/common/service/app_service/app_service.dart';
import 'package:sms_package/src/common/service/log_service/log_service.dart';

import '../../../core/bloc_core/ui_status.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AppService appService,
    required LogService logService,
 
  }) : super(const AppState()) {
    _appService = appService;
    _logService = logService;
    on<_Loaded>(_onLoaded);
    on<_DarkModeChanged>(_onDarkModeChanged);

 
  }
  late final AppService _appService;
  late final LogService _logService;


  
  Future<void> _onLoaded(
    _Loaded event,
    Emitter<AppState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: const UILoading(),
        ),
      );

      final bool darkMode = _appService.isDarkMode;

    //  await _encryption.intiData();
      /*var encData = _encryption.encrypt("hello machi");
      debugPrint("App Bloc encData:${encData}");
      var decData = _encryption.decrypt(encData);
      debugPrint("App Bloc encData:${decData}");*/

      emit(
        state.copyWith(
          status: const UILoadSuccess(),
          isDarkMode: darkMode,
        //  locale: locale,
        ),
      );
    } catch (e, s) {
      debugPrint("AppBloc:Error:$e");

      _logService.e('AppBloc load failed', e, s);
      emit(
        state.copyWith(
          status: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }

  FutureOr<void> _onDarkModeChanged(
    _DarkModeChanged event,
    Emitter<AppState> emit,
  ) async {
    final bool isDarkMode = !state.isDarkMode;
    await _appService.setIsDarkMode(darkMode: isDarkMode);
    emit(
      state.copyWith(
        isDarkMode: isDarkMode,
      ),
    );
  }
}