

import 'package:sms_package/src/data/repository/loginRepository/login_repository_impl.dart';

import '../../data/repository/ipRepository/categories_repository.dart';
import '../../data/repository/ipRepository/categories_repository_impl.dart';
import '../../data/repository/domainRepository/domain_repository.dart';
import '../../data/repository/domainRepository/domain_repository_impl.dart';
import '../../data/repository/loginRepository/login_repository.dart';
import '../injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerFactory<CategoriesRepository>(
          () => CategoriesRepositoryImpl(
        apiClient: injector(),
      ),
    );
     injector.registerFactory<DomainRepository>(
          () => DomainRepositoryImpl(
        apiClient: injector(),

      ),
    );
    injector.registerFactory<LoginRepository>(
          () => LoginRepositoryImpl(
        apiClient: injector(),
      ),
    );
    //  injector.registerFactory<ProfileRepo>(
    //       () => ProfileRepoImpl(
    //     apiClient: injector(),
    //
    //   ),
    // );

    /* injector.registerFactory<DogImageRandomRepository>(
      () => DogImageRandomRepositoryImpl(
        dogApiClient: injector(),
      ),
    );*/
  }
}