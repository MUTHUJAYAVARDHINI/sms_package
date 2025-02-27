import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sms_package/src/features/Login/data/forgotPassword/forgot_password_response.dart';
import 'package:sms_package/src/features/Login/data/userLogin/user_login_response.dart';

part 'login_api_client.g.dart';


@RestApi()
abstract class LoginApiClient {
  factory LoginApiClient(Dio dio, {String baseUrl}) = _LoginApiClient;

  @POST('banking/sms/usermasterlogin')
  Future<UserLoginResponse> UserLoginVerification(@Body() String body);

  @POST('banking/sms/usermasterlogin')
  Future<UserLoginResponse> SendPassWord(@Body() String body);

  @POST('banking/sms/usermaster/forgetpassword')
  Future<ForgotPasswordResponse> ForgotPassword(@Body() String body);

  @POST('banking/sms/usermaster/forgetpassword')
  Future<ForgotPasswordResponse> ResetPassword(@Body() String body);

  @POST('banking/sms/usermasterlogin')
  Future<ForgotPasswordResponse> ConfirmPassword(@Body() String body);
}

