import 'dart:io';

import 'package:dio/dio.dart';

extension DioEx on Dio {
  /// Top level methods

  /// common GET method
  Future<dynamic> postApi(
    String path, {
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    try {
      Response response = await post(
        path,
        data: data,
      );
      if (!response.data["success"]) {
        throw ApiError(response.data["code"], response.data["message"]);
      }
      return response.data;
    } catch (e) {
      if (e is DioError) {
        if (e.type == DioErrorType.response) {
          throw ApiError(500, e.response?.data["message"] ?? "");
        } else if (e.error is SocketException) {
          throw ApiError(0, "Please check your connection");
        }
        {
          throw ApiError(e.response?.statusCode ?? 0, "Something went wrong");
        }
      } else if (e is SocketException) {
        throw ApiError(0, "Please check your connection");
      } else {
        if (e is ApiError) {
          rethrow;
        }
        throw ApiError(0, "Something went wrong");
      }
    }
  }

  Future<dynamic> getApi(
    String path, {
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    try {
      Response response = await post(
        path,
        data: data,
      );
      print("=================== ${response.data}");
      if (!response.data["success"]) {
        throw ApiError(response.data["code"], response.data["message"]);
      }
      return response.data;
    } catch (e) {
      if (e is DioError) {
        if (e.type == DioErrorType.response) {
          throw ApiError(500, e.response?.data["message"] ?? "");
        } else if (e.error is SocketException) {
          throw ApiError(0, "Please check your connection");
        }
        {
          throw ApiError(e.response?.statusCode ?? 0, "Something went wrong");
        }
      } else if (e is SocketException) {
        throw ApiError(0, "Please check your connection");
      } else {
        if (e is ApiError) {
          rethrow;
        }
        throw ApiError(0, "Something went wrong");
      }
    }
  }
}

class ApiError {
  final int code;
  final String message;

  ApiError(this.code, this.message);
}
