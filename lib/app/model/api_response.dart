/// 通用API响应模型
class ApiResponse<T> {
  /// 状态码
  final int code;

  /// 响应数据（泛型）
  final T? data;

  /// 描述信息
  final String desc;

  /// 是否成功
  final bool status;

  /// 总数（通常用于分页）
  final int? total;

  ApiResponse({
    required this.code,
    this.data,
    required this.desc,
    required this.status,
    this.total,
  });

  /// 从 JSON 创建 ApiResponse 实例
  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic)? fromJsonT,
  ) {
    return ApiResponse<T>(
      code: json['code'] ?? 0,
      data: json['data'] != null && fromJsonT != null
          ? fromJsonT(json['data'])
          : null,
      desc: json['desc'] ?? '',
      status: json['status'] ?? false,
      total: json['total'],
    );
  }

  /// 转换为 JSON
  Map<String, dynamic> toJson(dynamic Function(T)? toJsonT) {
    return {
      'code': code,
      'data': data != null && toJsonT != null ? toJsonT(data as T) : data,
      'desc': desc,
      'status': status,
      'total': total,
    };
  }

  /// 判断请求是否成功
  bool get isSuccess => status && code == 1;

  /// 获取错误信息
  String get errorMessage => desc;
}
