
import 'package:sms_package/src/features/Login/data/domainData/domain_data.dart';

abstract class DomainRepository {
  Future<DomainData> sendDomainData(Map<String, dynamic> body);

  // Future<CourseTopicData> getCourseTopicData(String id);
//
// Future<CompanyResponseData> getCompanyData(String id);
//
// Future<CompanyResponseData> updateCompanyData(String id,CompanyUpdateDataData body);
}
