import 'dart:convert';
import 'dart:developer';

import 'package:sms_package/src/data/network/rest_client/categoriesAPI/categories_api_client.dart';
import 'package:sms_package/src/features/Login/data/ipData/ip_data.dart';
import '../../../helper/app_config.dart';
import 'categories_repository.dart';



class CategoriesRepositoryImpl implements CategoriesRepository  {
  CategoriesRepositoryImpl({
    required CategoriesApiClient apiClient,
  }) : _apiClient = apiClient;

  late final CategoriesApiClient _apiClient;

  @override
  Future<IPdata> getIPData() async{
    final response = await _apiClient.getIPData();
       return response;

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
