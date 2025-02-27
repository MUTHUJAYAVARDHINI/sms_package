import 'package:sms_package/src/common/models/valueModel.dart';
import 'package:sms_package/src/constants/app_icons.dart';

import 'enums.dart';

class AppConfig {
  AppConfig._();
  static const bool canLog = false;
  static const String envMode = dev;
  static const String dev = "dev";
  static const String prod = "prod";
  static const String appName = "cream";
  // static const String baseURL = "http://192.168.31.85:3000/api/";
  static const String baseURL = "https://ipinfo.io/json";
  static const String domainAPiUrl = "http://69.10.40.27:8002/v1/docz/";
  // static const String loginAPIUrl = "http://192.168.31.244:8007/v1/docz/";
  static const String loginAPIUrl = "http://192.168.0.108:8007/v1/docz/";
  static const String androidVersionCode = "1.0.1";
  static const andoidBuild = 1;
  static const String iOSVersionCode = "1.0.1";
  static const iOSBuild = 1;
  static const String USER_DATA = 'user_data';
  static const String THEME_MODE = 'theme_mode';
  static const String userRoleData = 'userRoleData';
  static const String defaultLocale = 'en';

 static List<ValueModel> bottomNavigationItems = [
    ValueModel(valueOne: AppIcons.home, valueTwo: DashboardScreenenums.home.name),
    ValueModel(
        valueOne: AppIcons.calendar, valueTwo: DashboardScreenenums.calendar.name),
        ValueModel(
        valueOne: AppIcons.course, valueTwo: DashboardScreenenums.course.name),
        ValueModel(
        valueOne: AppIcons.history, valueTwo: DashboardScreenenums.history.name),
    ValueModel(
        valueOne: AppIcons.profile, valueTwo: DashboardScreenenums.profile.name),
  ];

static List<ValueModel> categorImage = [
  ValueModel(valueOne:AppIcons.earnoverview,valueTwo:'Earnings',valueThree: 'overview'),
  ValueModel(valueOne:AppIcons.trainig,valueTwo:'Training',valueThree: 'Schedule'),
  ValueModel(valueOne:AppIcons.session,valueTwo:'Session',valueThree: 'Completed'),
  ValueModel(valueOne:AppIcons.support,valueTwo:'Help and',valueThree: 'Support'),
];

static const cousr = {
  "searchText": "",
  "pagNo": 1,
  "limit": 10
};
}