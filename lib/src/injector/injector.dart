import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'modules/bloc_module.dart';
import 'modules/dio_module.dart';
import 'modules/repository_module.dart';
import 'modules/rest_client_module.dart';
import 'modules/service_modules.dart';

class Injector {
  Injector._();
  static GetIt instance = GetIt.instance;

  static void init() {
    DioModule.setup();
    ServiceModule.init();
    RestClientModule.init();
    if (!kIsWeb) {
      //DatabaseModule.init();
    }
    RepositoryModule.init();
    BlocModule.init();

  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
