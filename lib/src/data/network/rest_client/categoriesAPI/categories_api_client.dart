import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sms_package/src/features/Login/data/ipData/ip_data.dart';

part 'categories_api_client.g.dart';

@RestApi()
abstract class CategoriesApiClient {
  /// Constructor
  factory CategoriesApiClient(Dio dio, {String baseUrl}) = _CategoriesApiClient;

  @GET('')
  Future<IPdata> getIPData();

//
//   @GET('company/{id}')
//   Future<CompanyFormResponse> getCompanyData(
//       @Path("id") String id,
//       );
//
//   @PATCH('company/{id}')
// Future<CompanyFormResponse> updateCompanyData(
//     @Path("id") String id,
//     @Body() CompanyUpdateDataData body,
// );
//
//   @GET('course/{id}')
//   Future<CourseTopicResponse> getCourseTopicData(
//       @Path("id") String id,
//       );
//
//   @POST('course/get-all-by-category/{id}')
//   Future<EmpowermentResponse> getEmpowermentData(
//       @Path("id") String id,
//       @Body() Map<String, dynamic> body
//       );
//
//   @POST('course/getAll')
//   Future<TrainerCourseData> getCoursesData({
//     @Body() required Map<String, dynamic> body,
//   });
// @PATCH('trainer/{id}')
// Future<TrainerUserCreateData> createUserData({
//   @Path("id") required String id,
//   @Body() required TrainerCreate trainerUserData,
// });
//
// @GET('trainer/{id}')
// Future<TrainerUserCreateData> getUserById(@Path("id") String id);

}

