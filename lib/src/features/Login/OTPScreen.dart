import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sms_package/src/data/network/dio/login_dio_module.dart';
import 'package:sms_package/src/helper/router_helper.dart';

import 'bloc/login_bloc.dart';

class OtpScreen extends StatefulWidget {
  final String email;
  final bool forgotPassword;

  OtpScreen({Key? key, required this.email, required this.forgotPassword})
      : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late LoginBloc loginBloc;
  final TextEditingController otpController = TextEditingController();
  String? email;
  String? password;
  String? tenantCode;
  String? entityCode;
  String? countryCode;

  @override
  void initState() {
    super.initState();
    loginBloc = context.read<LoginBloc>();
    fetchUserData();
  }
  void fetchUserData() async {
    Map<String, String?> userData = await getUserData();
    setState(() {
      email = userData['email'];
      password = userData['password'];
      tenantCode = userData['tenantCode'];
      entityCode = userData['entityCode'];
      countryCode = userData['countryCode'];
    });
  }

  Future<Map<String, String?>> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'email': prefs.getString('userEmail'),
      'password': prefs.getString('userPassword'),
      'tenantCode': prefs.getString('tenantCode'),
      'entityCode': prefs.getString('entityCode'),
      'countryCode': prefs.getString('countryCode'),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter OTP")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Enter the 6-digit OTP sent to your email"),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: otpController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 6,
                decoration: const InputDecoration(
                  counterText: "",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                if (widget.forgotPassword) {
                  _validateOTP();
                } else {
                  _confirmOTP();
                }
              },
              child: const Text(
                "Validate OTP",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                final errorCodeDto =
                    state.ForgotData?.data?.errorCodeDto?.first;
                print(errorCodeDto?.langCode);
                if (errorCodeDto != null &&
                    errorCodeDto.errorCode == "EnTxn0045" &&
                    errorCodeDto.errorType == "S" &&
                    errorCodeDto.langCode == "Forgot Password Verfied") {
                  _showChangePasswordPopup();
                } else if (errorCodeDto != null &&
                    errorCodeDto.errorCode == "EnTxn0045" &&
                    errorCodeDto.errorType == "S" &&
                    errorCodeDto.langCode == "Forgot Password Confirm") {
                  // Navigator.pop(context);
                  context.go(RouteHelper.login, extra: {});
                }else if (errorCodeDto != null &&
                    errorCodeDto.errorCode == "EnTxn0045" &&
                    errorCodeDto.errorType == "S" &&
                    errorCodeDto.langCode == "OTP Verified") {
                  print("__________LOGGED IN__________");
                  // context.go(RouteHelper.login, extra: {});
                }
                else {
                  print("((((((((");
                }
              },
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return state.status.when(
                    initial: () => const Center(child: Text('Initializing...')),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loadSuccess: (_) => Container(),
                    loadFailed: (message) {
                      if (state
                              .ForgotData?.data?.errorCodeDto?.first.langCode ==
                          "forgotPasswordVerified failed") {
                        Future.microtask(() {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Error"),
                              content:
                                  const Text("Check the user details entered"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text("OK"),
                                ),
                              ],
                            ),
                          );
                        });
                      }
                      return const Center(
                          child: Text(
                              "An error occurred")); // Ensure a widget is returned
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showChangePasswordPopup() {
    if (!mounted) return;

    showDialog(
      context: context,
      builder: (context) {
        final TextEditingController oldPasswordController =
            TextEditingController();
        final TextEditingController newPasswordController =
            TextEditingController();
        final _formKey = GlobalKey<FormState>();

        final ValueNotifier<bool> isOldPasswordVisible =
            ValueNotifier<bool>(false);
        final ValueNotifier<bool> isNewPasswordVisible =
            ValueNotifier<bool>(false);

        return AlertDialog(
          title: Text("Change Password"),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Text(""),
                SizedBox(height: 10),

                // Old Password Field
                ValueListenableBuilder<bool>(
                  valueListenable: isOldPasswordVisible,
                  builder: (context, isVisible, child) {
                    return TextFormField(
                      controller: oldPasswordController,
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(isVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            isOldPasswordVisible.value =
                                !isOldPasswordVisible.value;
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 16),

                // New Password Field
                ValueListenableBuilder<bool>(
                  valueListenable: isNewPasswordVisible,
                  builder: (context, isVisible, child) {
                    return TextFormField(
                      controller: newPasswordController,
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(isVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            isNewPasswordVisible.value =
                                !isNewPasswordVisible.value;
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your confirm password";
                        }
                        if (value.length < 6) {
                          return "Password must be at least 6 characters long";
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("Old Password: ${oldPasswordController.text}");
                      print("New Password: ${newPasswordController.text}");
                      if (oldPasswordController.text ==
                          newPasswordController.text) {
                        String otp = otpController.text.trim();
                        print("Entered OTP: $otp");

                        Map<String, String> updateUserData = {
                          "mailId": widget.email,
                          "userPassword": newPasswordController.text
                        };
                        String jsonString = jsonEncode(updateUserData);

                        loginBloc.add(LoginEvent.resetPassword(jsonString));
                        // LoginDioModule.setOtp(otp);
                        LoginDioModule.setOtp(otp);
                        LoginDioModule.setPassword(newPasswordController.text);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content:
                                  Text("Please check the password entered")),
                        );
                      }
                      Navigator.pop(context); // Close the popup
                    }
                  },
                  child: Text(
                    "Change Password",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _validateOTP() {
    String otp = otpController.text.trim();
    print("Entered OTP: $otp");

    if (otp.length == 6) {
      Map<String, String> updateUserData = {
        // "mailId": widget.email,
        "mailId": email ?? "",
        "userId": "",
        "userPassword": password ?? "",
        "countryCode": countryCode ?? "",
        "entityCode": entityCode ?? "",
        "defaultTenantCode": tenantCode ?? ""
      };
      String jsonString = jsonEncode(updateUserData);

      loginBloc.add(LoginEvent.forgotPassword(jsonString));
      LoginDioModule.setOtp(otp);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid 6-digit OTP")),
      );
    }
  }

  void _confirmOTP() {
    String otp = otpController.text.trim();
    print("Confirm Entered OTP: $otp");


    if (otp.length == 6) {
      Map<String, String> updateUserData = {
        // "mailId": widget.email,
        "mailId": email ?? "",
        "userId": "",
        "userPassword": password ?? "",
        "countryCode": countryCode ?? "",
        "entityCode": entityCode ?? "",
        "defaultTenantCode": tenantCode ?? ""
      };
      String jsonString = jsonEncode(updateUserData);

      loginBloc.add(LoginEvent.confirmPassword(jsonString));
      LoginDioModule.setOtp(otp);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid 6-digit OTP")),
      );
    }
  }
}
