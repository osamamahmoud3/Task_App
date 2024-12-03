import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:task/core/errors/error_handler.dart';
import 'package:task/feature/home/data/models/add_task_request_body.dart';
import 'package:task/feature/home/domin/repos/image_repo.dart';

import '../repos/todo_repo.dart';

class AddTaskUseCase {
  final ImageRepo imageRepo;
  final ToDoRepo toDoRepo;

  AddTaskUseCase({required this.imageRepo, required this.toDoRepo});

  Future<Either<Failure, void>> call(
      {required addToDoRequestBody addToDoRequestBody,
      required File imageFile}) async {
    final result = await imageRepo.uploadImage(imageFile: imageFile);
    result.fold((error) async {
      var result = await toDoRepo.addToDo(toDoRequestBody: addToDoRequestBody);
      result.fold((error) {
        return Left(ServerFailure(errorMsg: error.errorMsg));
      }, (data) {
        return const Right(null);
      });
    }, (image) async {
      addToDoRequestBody.image = image;
      var result = await toDoRepo.addToDo(toDoRequestBody: addToDoRequestBody);
      result.fold((error) {
        return Left(ServerFailure(errorMsg: error.errorMsg));
      }, (data) {
        return const Right(null);
      });
    });

    return const Right(null);
  }
}
