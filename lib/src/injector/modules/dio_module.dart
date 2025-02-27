import 'package:sms_package/src/data/network/dio/categories_dio_module.dart';
import 'package:sms_package/src/data/network/dio/domain_dio_module.dart';
import 'package:sms_package/src/data/network/dio/login_dio_module.dart';


class DioModule {
  DioModule._();

  static void setup() {
    CategoriesDioModule.setup();
    DomainDioModule.setup();
    LoginDioModule.setup();
  }


}
