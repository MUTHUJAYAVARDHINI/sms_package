// import 'package:trainer/src/common/service/app_service/app_service.dart';
// import 'package:trainer/src/common/service/app_service/app_service_implement.dart';
// import 'package:trainer/src/common/service/local_storage_service/local_storage_service.dart';
// import 'package:trainer/src/common/service/local_storage_service/shared_preferences_service.dart';
// import 'package:trainer/src/common/service/log_service/debug_log_service.dart';
// import 'package:trainer/src/common/service/log_service/log_service.dart';
// import 'package:trainer/src/injector/injector.dart';
//
// class ServiceModule {
//   ServiceModule._();
//
//   static void init() {
//   final injector = Injector.instance;
//
//     injector
//      ..registerFactory<LogService>(DebugLogService.new)
//       ..registerSingleton<LocalStorageService>(
//         SharedPreferencesService(
//           logService: injector(),
//         ),
//         signalsReady: true,
//       )
//       ..registerSingleton<AppService>(
//         AppServiceImpl(
//           localStorageService: injector(),
//         ),
//       );
//   }
// }

import 'package:sms_package/src/common/service/app_service/app_service.dart';
import 'package:sms_package/src/common/service/app_service/app_service_implement.dart';
import 'package:sms_package/src/common/service/local_storage_service/local_storage_service.dart';
import 'package:sms_package/src/common/service/local_storage_service/shared_preferences_service.dart';
import 'package:sms_package/src/common/service/log_service/debug_log_service.dart';
import 'package:sms_package/src/common/service/log_service/log_service.dart';

import '../injector.dart';

class ServiceModule {
  ServiceModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerFactory<LogService>(DebugLogService.new)
      ..registerSingleton<LocalStorageService>(
        SharedPreferencesService(
          logService: injector(),
        ),
        signalsReady: true,
      )
      ..registerSingleton<AppService>(
        AppServiceImpl(
          localStorageService: injector(),
        ),
      );
      
  }
}
