part of 'addtodo_cubit.dart';

@freezed
abstract class AddtodoState with _$AddtodoState {
  const factory AddtodoState.initial() = _Initial;
  const factory AddtodoState.addTodoLoading() = Loading;
  const factory AddtodoState.addTodoSuccess() = Success;
  const factory AddtodoState.addTodoFailure(
    final String errorMessage,
  ) = Failure;
}
