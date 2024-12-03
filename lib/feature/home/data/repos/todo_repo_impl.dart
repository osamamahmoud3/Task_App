import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:task/core/errors/error_handler.dart';
import 'package:task/core/network/api_service.dart';
import 'package:task/feature/home/data/models/add_task_request_body.dart';
import 'package:task/feature/home/data/models/todo_model.dart';
import 'package:task/feature/home/domin/entities/todo_entity.dart';
import 'package:task/feature/home/domin/repos/todo_repo.dart';

import '../../../../core/errors/custom_exception.dart';
import '../../../../core/network/api_constant.dart';

class TodoRepoImpl implements ToDoRepo {
  final ApiService apiService;

  TodoRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<TodoEntity>>> getAllToDos(
      {int pageNumber = 1}) async {
    try {
      var response = await apiService.get(
          endPoint: "${ApiConstant.getToDos}$pageNumber") as List<dynamic>;

      return Right(
          response.map((e) => ToDoModel.fromJson(e).toEntity()).toList());
    } on CustomException catch (e) {
      return Left(ServerFailure(errorMsg: e.message));
    } catch (e) {
      log('error in sign up method and the error is : ${e.toString()}');
      return Left(ServerFailure(errorMsg: 'The was an Error'));
    }
  }

  @override
  Future<Either<Failure, void>> addToDo(
      {required addToDoRequestBody toDoRequestBody}) async {
    try {
      await apiService.post(
          endPoint: ApiConstant.addToDo, body: toDoRequestBody.toJson());
      return const Right(null);
    } on CustomException catch (e) {
      return Left(ServerFailure(errorMsg: e.message));
    } catch (e) {
      log('error in sign up method and the error is : ${e.toString()}');
      return Left(ServerFailure(errorMsg: 'The was an Error'));
    }
  }

  @override
  Future<Either<Failure, void>> delete({required String id}) async {
    try {
      await apiService.delete(endPoint: "${ApiConstant.addToDo}/$id");
      return const Right(null);
    } on CustomException catch (e) {
      return Left(ServerFailure(errorMsg: e.message));
    } catch (e) {
      log('error in sign up method and the error is : ${e.toString()}');
      return Left(ServerFailure(errorMsg: 'The was an Error'));
    }
  }
}
