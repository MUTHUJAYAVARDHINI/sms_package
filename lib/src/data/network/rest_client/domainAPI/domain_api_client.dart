import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


part 'domain_api_client.g.dart';

@RestApi()
abstract class DomainApiClient {
  /// Constructor
  factory DomainApiClient(Dio dio, {String baseUrl}) = _DomainApiClient;


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
  @POST('banking/app/mapping/domain')
  Future<String> getDomainData(@Body() Map<String, dynamic> body);

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

