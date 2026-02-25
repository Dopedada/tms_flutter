import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil {
  // 私有化构造函数，避免外部实例化
  StorageUtil._();
  static late final SharedPreferences _prefs;

  // 初始化 SharedPreferences（APP启动时调用一次即可）
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // 存储字符串
  static Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  // 获取字符串（无值时返回默认值）
  static String getString(String key, {String defaultValue = ''}) {
    return _prefs.getString(key) ?? defaultValue;
  }

  // 存储布尔值
  static Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  // 获取布尔值
  static bool getBool(String key, {bool defaultValue = false}) {
    return _prefs.getBool(key) ?? defaultValue;
  }

  // 存储整数
  static Future<bool> setInt(String key, int value) async {
    return await _prefs.setInt(key, value);
  }

  // 获取整数
  static int getInt(String key, {int defaultValue = 0}) {
    return _prefs.getInt(key) ?? defaultValue;
  }

  // 存储浮点数
  static Future<bool> setDouble(String key, double value) async {
    return await _prefs.setDouble(key, value);
  }

  // 获取浮点数
  static double getDouble(String key, {double defaultValue = 0.0}) {
    return _prefs.getDouble(key) ?? defaultValue;
  }

  // 删除指定键值对
  static Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }

  // 清空所有存储
  static Future<bool> clear() async {
    return await _prefs.clear();
  }
}
