import 'package:flutter/widgets.dart';

import '../../../../../core/router/routes.dart';
import '../../../domin/entities/todo_entity.dart';
import 'todo_item.dart';

class ToDoItemsListView extends StatelessWidget {
  const ToDoItemsListView({
    super.key,
    required ScrollController scrollController,
    required this.todos,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;
  final List<TodoEntity> todos;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.todoDetails,
                  arguments: todos[index]);
            },
            child: ToDoItem(
              toDoId: todos[index].id,
              title: todos[index].title,
              description: todos[index].desc,
              date: todos[index].updatedAt,
              priority: todos[index].priority,
              state: todos[index].status,
            ),
          );
        },
      ),
    );
  }
}
