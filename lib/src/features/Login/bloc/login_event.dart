
part of 'login_bloc.dart';

@Freezed()
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.getCategoriesRequested() = _GetIPdataRequested;
  const factory LoginEvent.sendDomainName(Map<String, dynamic> data) = _sendDemodata;
  const factory LoginEvent.getLoginIdValidation(String validationData) = _GetLoginIdValidation;
  const factory LoginEvent.sendUserPassword(String validationPassword) = _sendPassword;
  const factory LoginEvent.forgotPassword(String forgotPassword) = _forgotPassword;
  const factory LoginEvent.resetPassword(String resetPassword) = _resetPassword;
  const factory LoginEvent.confirmPassword(String confirmPassword) = _confirmPassword;
}
