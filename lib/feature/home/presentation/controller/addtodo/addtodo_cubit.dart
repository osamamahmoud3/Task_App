import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/feature/home/data/models/add_task_request_body.dart';

import '../../../domin/use_cases/add_task_use_case.dart';

part 'addtodo_state.dart';
part 'addtodo_cubit.freezed.dart';

class AddtodoCubit extends Cubit<AddtodoState> {
  final AddTaskUseCase addTaskUseCase;
  AddtodoCubit(this.addTaskUseCase) : super(const AddtodoState.initial());
  File? taskImageFile;
  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? priority = 'medium';
  String? date;
  String? status ='waiting';

  Future<void> emitAddTask() async {
    emit(const AddtodoState.addTodoLoading());

    final result = await addTaskUseCase.call(
        addToDoRequestBody: addToDoRequestBody(
            title: taskTitleController.text,
            image: taskImageFile!.path,
            desc: taskDescriptionController.text,
            priority: priority!,
            date: date!),
        imageFile: taskImageFile!);
    result.fold((l) {
      emit(AddtodoState.addTodoFailure(l.errorMsg));
    }, (r) {
      emit(const AddtodoState.addTodoSuccess());
    });
  }
}
