import 'package:flutter/material.dart';
import 'package:task/core/router/routes.dart';

import 'todo_flag_and_data.dart';
import 'todo_title_and_state.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem(
      {super.key,
      required this.title,
      required this.description,
      required this.priority,
      required this.state,
      required this.date,
      required this.toDoId});
  final String title, description, priority, state, date, toDoId;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Row(
        children: [
          SizedBox(
              height: 64,
              width: 64,
              child: Image.asset('assets/images/todo_image.png')),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TodoTitleAndStateItem(
                  toDoId: toDoId,
                  title: title,
                  state: state,
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: 219,
                  height: 24,
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Color(0x9924252C),
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                TodoFlagAndDateItem(
                  priority: priority,
                  date: date,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
