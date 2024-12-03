import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/feature/home/domin/repos/todo_repo.dart';
import 'package:task/feature/home/presentation/controller/todo_cubit/todo_state.dart';

class ToDoCubit extends Cubit<ToDoState> {
  final ToDoRepo toDoRepo;

  ToDoCubit(this.toDoRepo) : super(const ToDoState.initial());

  Future<void> fetchToDos({int pageNumber = 1}) async {
    if (pageNumber == 1) {
      emit(const ToDoState.loading());
    } else {
      emit(const ToDoState.paginationLoading());
    }

    final failureOrTodos = await toDoRepo.getAllToDos(pageNumber: pageNumber);

    failureOrTodos.fold(
      (failure) {
        if (pageNumber == 1) {
          emit(const ToDoState.failure());
        } else {
          emit(ToDoState.paginationFailure(
            failure.errorMsg,
          ));
        }
      },
      (toDos) {
        emit(ToDoState.success(
          toDos,
        ));
      },
    );
  }

  Future<void> deleteToDo({
    required String todoId,
  }) async {
    emit(const ToDoState.deleteToDoLoading());

    final result = await toDoRepo.delete(id: todoId);

    result.fold((error) {
      emit(ToDoState.deleteToDoFailure(
        error.errorMsg,
      ));
    }, (data) async {
      await fetchToDos();
      emit(const ToDoState.deleteToDoSuccess());
    });
  }
}
