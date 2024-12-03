import 'package:dartz/dartz.dart';
import 'package:task/feature/home/domin/entities/todo_entity.dart';

import '../../../../core/errors/error_handler.dart';
import '../../data/models/add_task_request_body.dart';

abstract class ToDoRepo{
  Future<Either<Failure, List<TodoEntity>>> getAllToDos({ int pageNumber =1});
  Future<Either<Failure, void>> addToDo({required addToDoRequestBody toDoRequestBody});
    Future<Either<Failure, void>> delete  ({required String id});  
}