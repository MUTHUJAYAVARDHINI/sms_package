import 'dart:convert';
import 'dart:developer';
import 'package:sms_package/src/data/network/rest_client/loginAPI/login_api_client.dart';
import 'package:sms_package/src/features/Login/data/forgotPassword/forgot_password_response.dart';
import 'package:sms_package/src/features/Login/data/userLogin/user_login_response.dart';


import 'login_repository.dart';



class LoginRepositoryImpl implements LoginRepository  {
  LoginRepositoryImpl({
    required LoginApiClient apiClient,
  }) : _apiClient = apiClient;

  late final LoginApiClient _apiClient;

  @override
  Future<UserLoginResponse> getLoginIdValidation(String body) async{
    print("_________response");
    final response = await _apiClient.UserLoginVerification(body);
    return response;
  }

  @override
  Future<UserLoginResponse> sendPasswordValidation(String body) async{
    final response = await _apiClient.SendPassWord(body);
    print(response);
    return response;
  }

  @override
  Future<ForgotPasswordResponse> forgotPassword(String body) async{
    final response = await _apiClient.ForgotPassword(body);
    print(response);
    return response;
  }

  @override
  Future<ForgotPasswordResponse> resetPassword(String body) async{
    final response = await _apiClient.ResetPassword(body);
    print(response);
    return response;
  }

  @override
  Future<ForgotPasswordResponse> confirmPassword(String body) async{
    final response = await _apiClient.ConfirmPassword(body);
    print(response);
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
