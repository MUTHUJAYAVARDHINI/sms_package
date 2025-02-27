import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sms_package/src/common/widgets/common_button_widget.dart';
import 'package:sms_package/src/common/widgets/common_text_widgets.dart';
import 'package:sms_package/src/constants/app_colors.dart';
import 'package:sms_package/src/constants/app_sizes.dart';
import 'package:sms_package/src/constants/app_string.dart';
import 'package:sms_package/src/constants/app_style.dart';
import 'package:sms_package/src/constants/boxDecoration.dart';
import 'package:sms_package/src/helper/router_helper.dart';
import '../../common/widgets/common_title_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc/login_bloc.dart';
import 'data/domainData/domain_data.dart';
import 'data/userLogin/user_login_response.dart';
import 'data/userPassData/user_pass_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc loginBloc;

  @override
  void initState() {
    super.initState();
    loginBloc = context.read<LoginBloc>();
    // loginBloc.add(LoginEvent.getCategoriesRequested());
    final requestData = {
      "domainName": "demo.simpldocz.com",
      "subDomainName": "auth/login",
      "whitelistedIpAddresses": "",
    };

    loginBloc.add(LoginEvent.sendDomainName(requestData));
  }

  // @override
  // void dispose() {
  //   loginBloc.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return state.status.when(
            initial: () => const Center(child: Text('Initializing...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loadFailed: (message) {
              Future.microtask(() {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Error"),
                    content: Text("Check the user details entered"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              });

              return SingleChildScrollView(
                child: SuccessWidget(
                  loginBloc: loginBloc,
                  domainData: state.domainData,
                  UserData: state.UserData,
                ),
              );
            },
            loadSuccess: (UserLoginData) {
              if (state.UserData != null) {
                final errorCodeDto = state.UserData?.data?.errorCodeDto?.first;
                if (errorCodeDto?.errorCode == "EnTxn0045" &&
                    errorCodeDto?.errorType == "S" &&
                    errorCodeDto?.langCode == "User Id Verified") {
                  saveUserCode(
                      state.UserData?.data?.entityCode,
                      state.UserData?.data?.defaultTenantCode,
                      state.UserData?.data?.countryCode);
                  return SingleChildScrollView(
                    child: SuccessWidget(
                      loginBloc: context.read<LoginBloc>(),
                      domainData: state.domainData,
                      UserData: state.UserData,
                    ),
                  );
                } else if (errorCodeDto?.errorCode == "EnTxn0045" &&
                    errorCodeDto?.errorType == "S" &&
                    errorCodeDto?.langCode == "Password Verified") {
                  print("------");
                  Future.microtask(() => _navigateToOtpScreen());

                  saveUserCode(
                      state.UserData?.data?.entityCode,
                      state.UserData?.data?.defaultTenantCode,
                      state.UserData?.data?.countryCode);
                }
              }
              return SingleChildScrollView(
                child: SuccessWidget(
                  loginBloc: loginBloc,
                  domainData: state.domainData,
                  UserData: state.UserData,
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> saveUserCode(
      String? entityCode, String? tenantCode, String? countryCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('entityCode', entityCode!);
    await prefs.setString('tenantCode', tenantCode!);
    await prefs.setString('countryCode', countryCode!);
  }

  void _navigateToOtpScreen() {
    context.go(RouteHelper.oTP, extra: {'forgotPassword': false});
  }
}

class SuccessWidget extends StatefulWidget {
  final LoginBloc loginBloc;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final DomainData? domainData;
  final UserLoginResponse? UserData;

  SuccessWidget(
      {Key? key,
      required this.loginBloc,
      required this.domainData,
      required this.UserData})
      : super(key: key);

  @override
  _SuccessWidgetState createState() => _SuccessWidgetState();
}

class _SuccessWidgetState extends State<SuccessWidget> {
  void _showForgotPasswordPopup() {
    if (!mounted) return;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Forgot Password"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Enter your email to receive an OTP"),
              SizedBox(height: 10),
              TextFormField(
                controller: widget.email,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    String email = widget.email.text.trim();
                    if (_isValidEmail(email)) {
                      _sendOTP();
                      Navigator.pop(context); // Close the dialog
                      Future.microtask(() => _navigateToOtpScreen());
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text("Please enter a valid email address")),
                      );
                    }
                  },
                  child: Text(
                    "Send OTP",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
            ],
          ),
        );
      },
    );
  }

  bool _isValidEmail(String email) {
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  void _navigateToOtpScreen() {
    context.go(RouteHelper.oTP, extra: {'forgotPassword': true});
  }

  void _sendOTP() {
    Map<String, String> updateUserData = {
      "mailId": widget.email.text,
    };
    String jsonString = jsonEncode(updateUserData);
    widget.loginBloc.add(LoginEvent.forgotPassword(jsonString));
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<LoginBloc>().state;

    if (state.UserData?.data?.mailId?.isNotEmpty ?? false) {
      widget.email.text = state.UserData?.data?.mailId ?? '';
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.size_16),
      child: Column(
        children: [
          Image.asset('assets/icons/profileImg.png'),
          SizedBox(
            height: 40.0,
          ),
          TextView(
            text: "Login",
            textStyle: TextStyle(
                fontWeight: FontWeight.w500, fontSize: AppSizes.size_20),
          ),
          AppStyles.vGapMedium(),
          Container(
            decoration: BoxDecorations.buildBoxDecoratioOne(
              borderColor: AppColors.dark,
              radius: AppSizes.size_10,
            ),
            padding: EdgeInsets.all(AppSizes.size_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonFormTitle(
                  title: "User name",
                  isMandatory: false,
                  style: TextStyle(
                    fontSize: AppSizes.size_14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.profileEmailColor,
                  ),
                ),
                AppStyles.vGapSmall(value: AppSizes.size_04),
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: widget.email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.loginBorderColor), // Black border
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                      hintText: "Enter User Name",
                    ),
                  ),
                ),
                if (state.showPasswordField) ...[
                  AppStyles.vGapMedium(),
                  CommonFormTitle(
                    title: "Password",
                    isMandatory: false,
                    style: TextStyle(
                      fontSize: AppSizes.size_14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.profileEmailColor,
                    ),
                  ),
                  AppStyles.vGapSmall(value: AppSizes.size_04),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      controller: widget.password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  AppColors.loginBorderColor), // Black border
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        hintText: "Enter Password",
                      ),
                    ),
                  ),
                  AppStyles.vGapSmall(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: _showForgotPasswordPopup,
                        child: Text(
                          "Forgot your Password",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                AppStyles.vGapLarge(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.size_16),
                  child: CommonButton(
                    onPressed: () {
                      print("_____${widget.email.text}");
                      print("_____${widget.password.text}");
                      if (widget.email.text.isNotEmpty &&
                          widget.email.text.toString() != "" &&
                          widget.password.text.isEmpty) {
                        saveUserData(widget.email.text.toString(),
                            widget.password.text.toString());
                        UserPassData updatedUserData = UserPassData().copyWith(
                            userId: widget.email.text.toString(),
                            entityCode: widget.domainData?.entityCode,
                            defaultTenantCode: widget.domainData?.tenantCode);
                        widget.loginBloc.add(LoginEvent.getLoginIdValidation(
                            updatedUserData.toJsonString()));
                      } else if (widget.email.text.isNotEmpty &&
                          widget.email.text.toString() != "" &&
                          widget.password.text.isNotEmpty &&
                          widget.password.text.toString() != "") {
                        saveUserData(widget.email.text.toString(),
                            widget.password.text.toString());
                        UserPassData updatedUserData = UserPassData().copyWith(
                            userId: widget.email.text.toString(),
                            entityCode: widget.domainData?.entityCode,
                            defaultTenantCode: widget.domainData?.tenantCode,
                            userPassword: widget.password.text.toString());

                        widget.loginBloc.add(LoginEvent.sendUserPassword(
                            updatedUserData.toJsonString()));
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Center(child: Text("Email")),
                            content: Text("Please enter your email address."),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("OK"),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    decoration: BoxDecorations.buildBoxDecoratioOne(
                        decColor: AppColors.profileBackground),
                    text: AppString.login,
                    textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> saveUserData(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userEmail', email);
    await prefs.setString('userPassword', password);
  }
}
