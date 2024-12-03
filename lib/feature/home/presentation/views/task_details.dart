import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:task/core/widgets/build_custom_app_bar.dart';
import 'package:task/feature/home/presentation/controller/todo_cubit/todo_cubit.dart';

import '../../../../core/styles/font_styles.dart';
import '../../../../core/widgets/app_text_from_feild.dart';
import '../../domin/entities/todo_entity.dart';
import '../controller/addtodo/addtodo_cubit.dart';
import 'widgets/priority_widget.dart';
import 'widgets/progress_widget.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key, required this.todoEntity});
  final TodoEntity todoEntity;

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildCustomAppBar(context, 'Details', [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'Edit') {
              } else if (value == 'Delete') {
                context
                    .read<ToDoCubit>()
                    .deleteToDo(todoId: widget.todoEntity.id);
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Edit',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Edit', style: FontStyles.font16Black),
                      SizedBox(height: 10),
                      Divider(),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Delete',
                  child: Text('Delete', style: FontStyles.font16Red),
                ),
              ];
            },
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 225,
                  child: Image.asset('assets/images/task_details.png'),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(widget.todoEntity.title, style: FontStyles.font20Bold),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  widget.todoEntity.desc,
                  style: const TextStyle(
                    color: Color(0x9924252C),
                    fontSize: 14,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
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
                  hintStyle: FontStyles.font14Normal,
                  hintText: DateFormat('yyyy-MM-dd')
                      .format(DateTime.parse(widget.todoEntity.updatedAt)),
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
                ProgressWidget(
                  progress: widget.todoEntity.status,
                  onChanged: (status) {
                    context.read<AddtodoCubit>().status = status;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                priorityWidget(
                  prioity: widget.todoEntity.priority,
                  onChanged: (prioity) {
                    context.read<AddtodoCubit>().priority = prioity;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QrImageView(
                      data: widget.todoEntity.id,
                      version: QrVersions.auto,
                      size: 300.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
