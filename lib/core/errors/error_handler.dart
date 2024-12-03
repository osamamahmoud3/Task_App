import 'dart:io';

import 'package:dio/dio.dart';
import 'package:task/core/errors/custom_exception.dart';

class Failure {
  final String errorMsg;

  Failure({required this.errorMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMsg});
  factory ServerFailure.formDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        throw CustomException('Connection Timeout, Please try again');
      case DioExceptionType.sendTimeout:
        throw CustomException('Send Timeout, Please try again');
      case DioExceptionType.receiveTimeout:
        throw CustomException('Receive Timeout, Please try again');
      case DioExceptionType.badCertificate:
        throw CustomException('Bad Certificate, Please try again');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(response: exception.response!);
      case DioExceptionType.cancel:
        throw CustomException('Request Cancelled, Please try again');
      case DioExceptionType.connectionError:
        if (exception.error is SocketException) {
          throw CustomException('Connection Error, Please try again');
        } else {
          throw CustomException('Connection Error, Please try again');
        }
      case DioExceptionType.unknown:
        if (exception.error is SocketException) {
          throw CustomException('Connection Error, Please try again');
        } else {
          throw CustomException('Connection Error, Please try again');
        }
    }
  }
  factory ServerFailure.fromResponse({required Response response}) {
    switch (response.statusCode) {
      case 400:
        throw ServerFailure(errorMsg: response.data['message']);
      case 401:
        throw ServerFailure(errorMsg: "Unauthorized");
      case 403:
        throw ServerFailure(errorMsg: "Forbidden");
      case 404:
        throw ServerFailure(errorMsg: "Not Found");
      case 500:
        throw ServerFailure(errorMsg: "Internal Server Error");
      default:
        throw ServerFailure(errorMsg: response.data['message']);
    }
  }
}
