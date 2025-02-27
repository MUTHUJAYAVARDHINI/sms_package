

import 'package:sms_package/src/features/Login/data/forgotPassword/forgot_password_response.dart';
import 'package:sms_package/src/features/Login/data/userLogin/user_login_response.dart';

import '../../../features/Login/data/domainData/domain_data.dart';

abstract class LoginRepository {
  Future<UserLoginResponse> getLoginIdValidation(String body);

  Future<UserLoginResponse> sendPasswordValidation(String body);

  Future<ForgotPasswordResponse> forgotPassword(String body);

  Future<ForgotPasswordResponse> confirmPassword(String body);

  Future<ForgotPasswordResponse> resetPassword(String body);
}
