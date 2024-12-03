import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:task/core/widgets/custom_snak_bar.dart';
import 'package:task/feature/home/domin/entities/todo_entity.dart';
import 'package:task/feature/home/presentation/controller/todo_cubit/todo_cubit.dart';
import 'package:task/feature/home/presentation/controller/todo_cubit/todo_state.dart';

import '../../../../../core/styles/colors.dart';
import 'my_task_item.dart';
import 'todo_item.dart';
import 'todo_items_list_view.dart';

class AllToDoAndFilterToDos extends StatefulWidget {
  const AllToDoAndFilterToDos({super.key});

  @override
  State<AllToDoAndFilterToDos> createState() => _AllToDoAndFilterToDosState();
}

class _AllToDoAndFilterToDosState extends State<AllToDoAndFilterToDos> {
  List<String> myTaskList = ['All', 'In Progress', 'Waiting', 'Finished'];
  int selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();
  int nextPageNumber = 2;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() async {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      if (!isLoading) {
        isLoading = true;
        await context
            .read<ToDoCubit>()
            .fetchToDos(pageNumber: nextPageNumber++);
        isLoading = false;
      }
    }
  }

  bool maxScrollExtent = false;
  List<TodoEntity> todos = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ToDoCubit, ToDoState>(
      listener: (context, state) {
        if (state is GetTodoSuccess) {
          todos.addAll(state.todos);
        } else if (state is GetTodoPaginationFailure) {
          errorSnackBar(state.errorMessage, context);
        }
      },
      buildWhen: (previous, current) =>
          current is GetTodoSuccess ||
          current is GetTodoFailure ||
          current is GetTodoLoading ||
          current is GetTodoPaginationLLoading,
      builder: (context, state) {
        if (state is GetTodoFailure) {
          return const Center(child: Text('There was an error'));
        } else if (state is GetTodoSuccess ||
            state is GetTodoPaginationLLoading ||
            state is GetTodoPaginationFailure) {
          state is GetTodoSuccess
              ? state.todos.isEmpty
                  ? maxScrollExtent = true
                  : maxScrollExtent = false
              : null;
          return Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(myTaskList.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: MyTaskItem(
                        selected: selectedIndex == index,
                        text: myTaskList[index],
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 24),
                ToDoItemsListView(
                    scrollController: _scrollController, todos: todos),
                const SizedBox(height: 24),
                state is GetTodoPaginationLLoading && !maxScrollExtent
                    ? const Center(
                        child: CircularProgressIndicator(
                            color: ColorsManger.primaryColor))
                    : const SizedBox(),
              ],
            ),
          );
        } else if (state is GetTodoLoading) {
          return Skeletonizer(
            enabled: true,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ToDoItem(
                  toDoId: '11',
                  title: "Loading...",
                  description: 'Loading...',
                  date: 'Loading...',
                  priority: 'Loading...',
                  state: '...',
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
