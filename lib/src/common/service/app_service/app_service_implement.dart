

import 'package:sms_package/src/common/service/local_storage_service/local_storage_service.dart';

import '../../../core/keys/app_keys.dart';
import 'app_service.dart';



class AppServiceImpl implements AppService {
  AppServiceImpl({
    required LocalStorageService localStorageService,
  }) : _localStorageService = localStorageService;
  late final LocalStorageService _localStorageService;

  @override
  bool get isDarkMode =>
      _localStorageService.getBool(key: AppKeys.darkModeKey) ?? false;

  // @override
  // bool get isFirstUse =>
  //     _localStorageService.getBool(key: AppKeys.isFirstUseKey) ?? true;

  // @override
  // String get locale =>
  //     _localStorageService.getString(key: AppKeys.localeKey) ??
  //     AppConfig.defaultLocale;

  @override
  Future<void> setIsDarkMode({required bool darkMode}) async {
    return _localStorageService.setValue(
      key: AppKeys.darkModeKey,
      value: darkMode,
    );
  }

  // @override
  // Future<void> setIsFirstUse({required bool isFirstUse}) async {
  //   return _localStorageService.setValue(
  //     key: AppKeys.isFirstUseKey,
  //     value: isFirstUse,
  //   );
  // }

  // @override
  // Future<void> setLocale({required String locale}) async {
  //   return _localStorageService.setValue(
  //     key: AppKeys.localeKey,
  //     value: locale,
  //   );
  // }
}
