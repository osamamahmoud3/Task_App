import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/feature/home/domin/entities/todo_entity.dart';

part 'todo_state.freezed.dart';

@freezed
class ToDoState with _$ToDoState {
  const factory ToDoState.initial() = GetTodoInitial;

  const factory ToDoState.loading() = GetTodoLoading;

  const factory ToDoState.success(
    List<TodoEntity> todos,
  ) = GetTodoSuccess;
  const factory ToDoState.paginationLoading() = GetTodoPaginationLLoading;

  const factory ToDoState.paginationFailure(
    String errorMessage,
  ) = GetTodoPaginationFailure;
  const factory ToDoState.failure() = GetTodoFailure;

  const factory ToDoState.deleteToDoLoading() = DeleteTodoLoading;

  const factory ToDoState.deleteToDoSuccess() = DeleteTodoSuccess;

  const factory ToDoState.deleteToDoFailure(
    String errorMsg,
  ) = DeleteTodoFailure;
}
