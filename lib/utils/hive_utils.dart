import 'dart:convert';

import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:tms_flutter/app/constants/storage_constants.dart';

import '../app/model/logistics_login_dto.dart';

/// Hive存储全局工具类
/// 所有Hive操作均通过此类完成，解耦业务代码与Hive底层API
class HiveUtils {
  // 私有化构造，防止实例化
  HiveUtils._();

  // ---------------------- 通用基础方法 ----------------------
  /// 打开指定Box（带缓存，避免重复打开）
  static Future<Box> openBox(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box(boxName);
    }
    return await Hive.openBox(boxName);
  }

  /// 关闭指定Box
  static Future<void> closeBox(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      await Hive.box(boxName).close();
    }
  }

  /// 清除指定Box的所有数据
  static Future<void> clearBox(String boxName) async {
    final box = await openBox(boxName);
    await box.clear();
  }

  /// 删除指定Box
  static Future<void> deleteBox(String boxName) async {
    await closeBox(boxName);
    await Hive.deleteBoxFromDisk(boxName);
  }

  // ---------------------- 通用增删改查 ----------------------
  /// 存储数据：key-value
  static Future<bool> put({
    required String boxName,
    required String key,
    required dynamic value,
  }) async {
    try {
      if (value == null) return false; // 空值不存储
      final box = await openBox(boxName);
      await box.put(key, value);
      print('Hive存储成功${value.toString()}');
      return true;
    } catch (e, stackTrace) {
      print('Hive存储失败[box:$boxName,key:$key]：$e，堆栈：$stackTrace');
      return false;
    }
  }

  /// 获取数据：根据key取值，返回指定类型或null
  static Future<T?> get<T>({
    required String boxName,
    required String key,
    T? defaultValue, // 可选：默认值
  }) async {
    try {
      final box = await openBox(boxName);
      final data = box.get(key, defaultValue: defaultValue);
      return data as T?;
    } catch (e, stackTrace) {
      print('Hive获取数据失败[box:$boxName,key:$key]：$e，堆栈：$stackTrace');
      return defaultValue;
    }
  }

  /// 删除指定key的数据
  static Future<bool> delete({
    required String boxName,
    required String key,
  }) async {
    try {
      final box = await openBox(boxName);
      await box.delete(key);
      return true;
    } catch (e, stackTrace) {
      print('Hive删除数据失败[box:$boxName,key:$key]：$e，堆栈：$stackTrace');
      return false;
    }
  }

  /// 判断key是否存在
  static Future<bool> containsKey({
    required String boxName,
    required String key,
  }) async {
    try {
      final box = await openBox(boxName);
      return box.containsKey(key);
    } catch (e) {
      print('Hive判断key失败[box:$boxName,key:$key]：$e');
      return false;
    }
  }

  // ---------------------- 业务专属方法（可选，进一步简化调用） ----------------------
  /// 【用户模块】存储用户信息（封装后，调用更简单）
  static Future<bool> saveUserInfo(dynamic userInfo) => put(
    boxName: StorageConstants.userBox,
    key: StorageConstants.userInfo,
    value: userInfo,
  );

  /// 【用户模块】获取用户信息
  static Future<T?> getUserInfo<T>() =>
      get<T>(boxName: StorageConstants.userBox, key: StorageConstants.userInfo);

  static Future<LoginResponse?> getUserInfos() async {
    try {
      // 1. 第一步：读取存储的JSON字符串（核心修改：指定泛型为String）
      String? userInfoJson = await get<String>(
        boxName: StorageConstants.userBox,
        key: StorageConstants.userInfo,
      );

      // 2. 判空：无数据直接返回null
      if (userInfoJson == null || userInfoJson.isEmpty) {
        print("用户信息JSON字符串为空");
        return null;
      }

      // 3. 解析JSON字符串为Map
      Map<String, dynamic> userInfoMap = json.decode(userInfoJson);

      // 4. 转换为LoginResponse对象（使用自动生成的fromJson方法）
      LoginResponse userInfo = LoginResponse.fromJson(userInfoMap);

      return userInfo;
    } catch (e) {
      // 异常捕获：JSON解析失败/类型转换失败等
      print("解析用户信息失败：$e");
      return null;
    }
  }

  /// 【用户模块】删除用户信息
  static Future<bool> removeUserInfo() =>
      delete(boxName: StorageConstants.userBox, key: StorageConstants.userInfo);

  /// 【用户模块】存储用户Token
  static Future<bool> saveUserToken(String token) => put(
    boxName: StorageConstants.userBox,
    key: StorageConstants.userToken,
    value: token,
  );

  /// 【用户模块】获取用户Token
  static Future<String?> getUserToken() => get<String>(
    boxName: StorageConstants.userBox,
    key: StorageConstants.userToken,
  );
}
