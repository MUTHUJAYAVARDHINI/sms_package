part of 'login_bloc.dart';

@Freezed()
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(UIInitial()) UIStatus status,
    IPdata? ipData,
    DomainData? domainData,
    UserLoginResponse? UserData,
    ForgotPasswordResponse? ForgotData,
    @Default(false) bool isBusy,
    @Default(false) bool showPasswordField,
  }) = _LoginState;
}
