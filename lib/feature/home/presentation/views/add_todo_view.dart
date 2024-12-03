import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:task/core/widgets/app_text_from_feild.dart';
import 'package:task/core/widgets/custom_button.dart';
import 'package:task/core/widgets/custom_snak_bar.dart';
import 'package:task/feature/home/presentation/controller/addtodo/addtodo_cubit.dart';
import 'package:task/feature/home/presentation/views/widgets/all_todos_and_filtered_todos.dart';
import 'package:intl/intl.dart';

import '../../../../core/widgets/build_custom_app_bar.dart';
import 'widgets/add_task_bloc_listener.dart';
import 'widgets/priority_widget.dart';
import 'widgets/add_image_container.dart';

class AddToDoView extends StatefulWidget {
  const AddToDoView({super.key});

  @override
  State<AddToDoView> createState() => _AddToDoViewState();
}

class _AddToDoViewState extends State<AddToDoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCustomAppBar(context, 'Add new task'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Form(
            key: context.read<AddtodoCubit>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 24,
                ),
                AddImageContainer(
                  onFileChanged: (imageFile) {
                    context.read<AddtodoCubit>().taskImageFile = imageFile;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Task title',
                    style: TextStyle(
                      color: Color(0xFF6E6A7C),
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFromField(
                  controller: context.read<AddtodoCubit>().taskTitleController,
                  hintStyle: const TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: 0.20,
                  ),
                  hintText: 'Enter title here...',
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Task Description',
                    style: TextStyle(
                      color: Color(0xFF6E6A7C),
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFromField(
                  maxLines: 5,
                  controller:
                      context.read<AddtodoCubit>().taskDescriptionController,
                  hintStyle: const TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: 0.20,
                  ),
                  hintText: 'Enter description here...',
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  width: 331,
                  child: Text(
                    'Priority',
                    style: TextStyle(
                      color: Color(0xFF6E6A7C),
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                priorityWidget(
                  onChanged: (prioity) {
                    context.read<AddtodoCubit>().priority = prioity;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Due date',
                    style: TextStyle(
                      color: Color(0xFF6E6A7C),
                      fontSize: 12,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFromField(
                  validator: (va) {
                    return null;
                  },
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100),
                    ).then((value) {
                      if (value != null) {
                        // Format the selected date to 'YYYY-MM-DD'
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(value);
                        context.read<AddtodoCubit>().date = formattedDate;
                        setState(() {});
                      }
                    });
                  },
                  readOnly: true,
                  hintStyle: const TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: 0.20,
                  ),
                  hintText: context.read<AddtodoCubit>().date == null
                      ? 'choose due date...'
                      : context.read<AddtodoCubit>().date!,
                  suffixIcon: SizedBox(
                      height: 24,
                      width: 24,
                      child: Center(
                          child:
                              SvgPicture.asset('assets/images/calendar.svg'))),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppCustomButton(
                    onPressed: () {
                      validateAndAddTask(context);
                    },
                    child: const Text(
                      'Add task',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )),
                const AddTaskBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }



  void validateAndAddTask(BuildContext context) {
    if (context.read<AddtodoCubit>().formKey.currentState!.validate()) {
      if (context.read<AddtodoCubit>().priority == null) {
        errorSnackBar('Please choose priority', context);
      } else {
        if (context.read<AddtodoCubit>().date == null) {
          errorSnackBar('Please choose date', context);
        } else {
          context.read<AddtodoCubit>().emitAddTask();
        }
      }
    }
  }
}
