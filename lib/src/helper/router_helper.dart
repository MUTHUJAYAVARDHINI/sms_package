import 'package:flutter/Material.dart';
import 'package:go_router/go_router.dart';
import 'package:sms_package/src/features/Login/LoginScreen.dart';
import 'package:sms_package/src/features/Login/OTPScreen.dart';


class RouteHelper {
  static const String dashBoard = 'dashBoard';
  static const String splash = '/';
  static const String notificationName = 'notificationScreen';
  static const String notificationScreenPath = '/notificationScreen';
  static const String home = '/home';
  static const String calendar = '/calendar';
  static const String profile = '/profile';
  static const String editProfile = '/editProfile';
  static const String companyProfile = '/companyProfile';
  static const String companyDetails = '/companyDetails';
  static const String courseDetails = '/courseDetails';
  static const String empowerment = '/empowerment';
  static const String oTP = '/OTP';
  static const String login = '/login';
  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
    GoRoute(
    path: splash,
    name: dashBoard,
    builder: (context, state) => const LoginScreen(),
  ),
      GoRoute(
        path: oTP,
        name: oTP,
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>? ?? {};
            final forgotPassword = extra['forgotPassword'] as bool? ?? false; // Default to false

            return OtpScreen(
              email: "muthujayavardhinis@gramosoft.in",
              forgotPassword: forgotPassword,
            );
          }
              // OtpScreen(email: 'demoadmin@simpldocz.com',),
      ),
      GoRoute(
        path: login,
        name: login,
        builder: (context, state) => LoginScreen()
      ),

    ],
  );
}
