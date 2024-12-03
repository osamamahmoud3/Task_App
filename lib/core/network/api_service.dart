import 'package:dio/dio.dart';

import '../errors/error_handler.dart';
import 'api_constant.dart';
import 'shared_prefs.dart';

class ApiService {
  final Dio _dio;

  ApiService({
    required Dio dio,
  }) : _dio = dio;
  Future<Map<String, dynamic>> post(
      {required String endPoint,
      required Map<String, dynamic> body,
      Map<String, dynamic>? header}) async {
    try {
      var response = await _dio.post(endPoint,
          data: body,
          options: Options(
            headers: header ??
                {
                  'Accept': 'application/json',
                  'Authorization': 'Bearer ',
                },
          ));

      return response.data;
    } on Exception catch (e) {
      if (e is DioException) {
        throw ServerFailure.formDioException(e);
      } else {
        throw ServerFailure(errorMsg: "Something went wrong");
      }
    }
  }

  dynamic get({required String endPoint}) async {
    try {
      var response = await _dio.get(endPoint,
          options: Options(
            headers: {
              'Accept': 'application/json',
              'Authorization': 'Bearer ',
            },
          ));

      return response.data;
    } on Exception catch (e) {
      if (e is DioException) {
        throw ServerFailure.formDioException(e);
      } else {
        throw ServerFailure(errorMsg: "Something went wrong");
      }
    }
  }

  Future<Map<String, dynamic>> put(
      {required String endPoint, required Map<String, dynamic> body}) async {
    try {
      var response = await _dio.put(endPoint,
          data: body,
          options: Options(
            headers: {
              'Accept': 'application/json',
              'Authorization': 'Bearer ',
            },
          ));

      return response.data;
    } on Exception catch (e) {
      if (e is DioException) {
        throw ServerFailure.formDioException(e);
      } else {
        throw ServerFailure(errorMsg: "Something went wrong");
      }
    }
  }

  Future<Map<String, dynamic>> delete({required String endPoint}) async {
    try {
      var response = await _dio.delete(endPoint,
          options: Options(
            headers: {
              'Accept': 'application/json',
              'Authorization': 'Bearer ',
            },
          ));

      return response.data;
    } on Exception catch (e) {
      if (e is DioException) {
        throw ServerFailure.formDioException(e);
      } else {
        throw ServerFailure(errorMsg: "Something went wrong");
      }
    }
  }
}
