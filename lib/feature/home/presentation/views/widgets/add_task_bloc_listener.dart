import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/widgets/custom_snak_bar.dart';
import 'package:task/feature/home/presentation/controller/addtodo/addtodo_cubit.dart';

import '../../../../../core/styles/colors.dart';

class AddTaskBlocListener extends StatelessWidget {
  const AddTaskBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddtodoCubit, AddtodoState>(
      listenWhen: (state, current) =>
          current is Success || current is Failure || current is Loading,
      listener: (context, state) {
        if (state is Success) {
          Navigator.pop(context);
          successSnackBar('Task added successfully', context);
        } else if (state is Failure) {
          Navigator.pop(context);
          errorSnackBar(state.errorMessage, context);
        } else {
          showDialog(
              context: context,
              builder: (context) => const Center(
                      child: CircularProgressIndicator(
                    color: ColorsManger.primaryColor,
                  )));
        }
      },
      child: Container(),
    );
  }
}
