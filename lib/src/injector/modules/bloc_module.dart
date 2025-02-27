

import 'package:sms_package/src/features/Login/bloc/login_bloc.dart';

import '../../features/app/bloc/app_bloc.dart';
import '../injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<AppBloc>(
            () => AppBloc(
          appService: injector(),
          logService: injector(),
        ),
      )

      ..registerLazySingleton<LoginBloc>(
        () => LoginBloc(
          domainRepository: injector(),
          categoriesRepository: injector(),
          loginRepository: injector(),
              logService: injector(),
        ),
      );



      // ..registerFactory<CategoriesBloc>(
      //   () => CategoriesBloc(
      //     categoriesRepository: injector(),
      //     logService: injector(),
      //   ),
      // )
     

      // ..registerFactory<CompanyFormBloc>(
      //         () => CompanyFormBloc(
      //       categoriesRepository: injector(),
      //       logService: injector(),
      //     ),
      // )
      //
      //   ..registerFactory<CourseTopicBloc>(
      //   () => CourseTopicBloc(
      //     categoriesRepository: injector(),
      //     logService: injector(),
      //   ),
      // )
      // ..registerFactory<CoursesBloc>(
      //       () => CoursesBloc(
      //     coursesrepo: injector(),
      //     logService: injector(),
      //   ),
      // )
      // ..registerFactory<EmpowermentBloc>(
      //   () => EmpowermentBloc(
      //     categoriesRepository: injector(),
      //     logService: injector(),
      //   ),
      // )
      // ..registerFactory<ProfileBloc>(
      //     () => ProfileBloc(profileRepo: injector(), logService: injector()));
  }
}
