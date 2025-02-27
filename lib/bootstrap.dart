import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:sms_package/src/features/app/presentation/app_screen.dart';
import 'src/common/service/log_service/bloc_observer.dart';
import 'src/injector/injector.dart';


Future<void> bootstrap() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Injector.init();
    await Injector.instance.allReady();
    Bloc.observer = AppBlocObserver();
    Logger.level = Level.verbose;
    runApp(const App());
  }, (error, stack) {
    debugPrint("MainError:$error");
  });
}
