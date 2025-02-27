import 'dart:convert';
import 'dart:developer';
import 'package:sms_package/src/data/network/rest_client/domainAPI/domain_api_client.dart';
import 'package:sms_package/src/features/Login/data/domainData/domain_data.dart';

import '../../../helper/app_config.dart';

import 'domain_repository.dart';



class DomainRepositoryImpl implements DomainRepository  {
  DomainRepositoryImpl({
    required DomainApiClient apiClient,
  }) : _apiClient = apiClient;

  late final DomainApiClient _apiClient;

  @override
  Future<DomainData> sendDomainData(Map<String, dynamic> body) async{
    final response = await _apiClient.getDomainData(body);
    print("response ------>$response");
      final decodedJson = json.decode(response); // Convert String to JSON
      return DomainData.fromJson(decodedJson);

  }


/// Remote

//  @override
//  Future<List<CategoriesData>> getCategoriesData() async{
//    final response = await _apiClient.getCategoriesData();
//    return response.data;
//  }
//
//  @override
//  Future<List<EmpowermentData>> getEmpowermentData(String id,Map<String, dynamic> body) async {
//    final response = await _apiClient.getEmpowermentData(id,body);
//    return response.data;
//  }
//  @override
//  Future<CourseTopicData> getCourseTopicData(String id) async {
//    final response = await _apiClient.getCourseTopicData(id);
//    return response.data;
//  }
//  @override
//  Future<CompanyResponseData> getCompanyData(String id) async {
//    final response = await _apiClient.getCompanyData(id);
//
//    if (response.data == null) {
//      throw Exception('Company data not found for ID: $id');
//    }
//
//    return response.data!;
//  }
//
//  @override
//  Future<CompanyResponseData> updateCompanyData(String id, CompanyUpdateDataData body) async{
// //   CompanyFormResponse companyFormResponse=CompanyFormResponse();
//   log(jsonEncode(body));
//    CompanyFormResponse response = await _apiClient.updateCompanyData(id,body);
//
//    log(jsonEncode(response));
//    if (response.data == null) {
//      throw Exception('Company data not found: $id');
//    }
//
//    return response.data!;
//  }

}
