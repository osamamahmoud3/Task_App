import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task/core/errors/custom_exception.dart';

import 'package:task/core/errors/error_handler.dart';
import 'package:task/feature/authentaction/data/models/login_request_body.dart';
import 'package:task/feature/authentaction/data/models/login_response_body.dart';

import 'package:task/feature/authentaction/data/models/signup_response_body.dart';

import '../../../../core/network/api_constant.dart';
import '../../../../core/network/api_service.dart';
import '../../domin/repos/auth_repo.dart';
import '../models/signup_request_body.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, SignUpResponseBody>> signUp(
      SignupRequestBody signUpRequestBody) async {
    try {
      var response = await apiService.post(
          endPoint: ApiConstant.signUp, body: signUpRequestBody.toJson());
      return Right(SignUpResponseBody.fromJson(response));
    } on CustomException catch (e) {
      return Left(ServerFailure(errorMsg: e.message));
    } catch (e) {
      log('error in sign up method and the error is : ${e.toString()}');
      return Left(ServerFailure(errorMsg: 'The was an Error'));
    }
  }

  @override
  Future<Either<Failure, LoginResponseBody>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      var response = await apiService.post(
          endPoint: ApiConstant.login, body: loginRequestBody.toJson());
      return Right(LoginResponseBody.fromJson(response));
    } on CustomException catch (e) {
      return Left(ServerFailure(errorMsg: e.message));
    } catch (e) {
      log('error in sign up method and the error is : ${e.toString()}');
      return Left(ServerFailure(errorMsg: 'The was an Error'));
    }
  }
}
