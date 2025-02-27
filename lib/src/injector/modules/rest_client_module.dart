
import 'package:sms_package/src/data/network/dio/login_dio_module.dart';
import 'package:sms_package/src/data/network/rest_client/categoriesAPI/categories_api_client.dart';
import 'package:sms_package/src/data/network/rest_client/domainAPI/domain_api_client.dart';
import 'package:sms_package/src/data/network/rest_client/loginAPI/login_api_client.dart';

import '../../data/network/dio/categories_dio_module.dart';
import '../../data/network/dio/domain_dio_module.dart';
import '../injector.dart';


class RestClientModule {
  RestClientModule._();

  static void init() {
    final injector = Injector.instance;

    injector..registerFactory<CategoriesApiClient>(
          () => CategoriesApiClient(
        injector(instanceName: CategoriesDioModule.dioInstanceName),
      ),
    );
    injector..registerFactory<DomainApiClient>(
          () => DomainApiClient(
        injector(instanceName: DomainDioModule.dioInstanceName),
      ),
    );
    injector..registerFactory<LoginApiClient>(
          () => LoginApiClient(
        injector(instanceName: LoginDioModule.dioInstanceName),
      ),
    );
  }
}
