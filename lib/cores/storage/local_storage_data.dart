import 'package:hive/hive.dart';

class LocalStorageData {
  factory LocalStorageData() {
    return _instance;
  }

  LocalStorageData._internal();

  static final LocalStorageData _instance = LocalStorageData._internal();

  static const String devUserHiveBox = 'user_dev';
  static const String stagingUserHiveBox = 'user_staging';
  static const String prodUserHiveBox = 'user_prod';

  String _cBox = devUserHiveBox;

  Future<void> changeHiveBox({String hiveBoxName = devUserHiveBox}) async {
    _cBox = hiveBoxName;
  }

  //Save isLogged in status
  Future<void> saveIsUserLoggedIn({bool isUserLoggedIn = false}) async {
    Hive.box(name: _cBox).put('isUserLoggedIn', isUserLoggedIn);
  }

  //Get isLogged in status
  dynamic isUserLoggedIn() {
    final value =
        Hive.box(name: _cBox).get('isUserLoggedIn', defaultValue: false);
    return value;
  }

  //Save App theme
  Future<void> saveAppThemeMode({int themeMode = 0}) async {
    Hive.box(name: _cBox).put('appThemeMode', themeMode);
  }

  //Get App theme Mode
  dynamic appThemeMode() {
    final value = Hive.box(name: _cBox).get('appThemeMode', defaultValue: 0);
    return value;
  }
}
