

import 'package:sms_package/src/features/Login/data/ipData/ip_data.dart';

abstract class CategoriesRepository {
  /// Remote
  Future<IPdata> getIPData();


  // Future<CourseTopicData> getCourseTopicData(String id);
  //
  // Future<CompanyResponseData> getCompanyData(String id);
  //
  // Future<CompanyResponseData> updateCompanyData(String id,CompanyUpdateDataData body);
}
