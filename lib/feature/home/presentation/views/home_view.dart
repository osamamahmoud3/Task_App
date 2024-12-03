import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/router/app_router.dart';
import 'package:task/feature/home/presentation/controller/todo_cubit/todo_cubit.dart';
import '../../../../core/router/routes.dart';
import 'widgets/all_todos_and_filtered_todos.dart';
import 'widgets/home_custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.qrCodeScanner);
              },
              child: const CircleAvatar(
                backgroundColor: Color(0xFFEAE5FF),
                radius: 27,
                child: Icon(Icons.qr_code),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.addToDo)
                    .then((value) => context.read<ToDoCubit>().fetchToDos());
              },
              child: const CircleAvatar(
                backgroundColor: Color(0xFF5F33E1),
                radius: 32,
                child: Icon(Icons.add, color: Colors.white),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: HomeCustomAppBar(),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: 336,
                child: Text(
                  'My Tasks',
                  style: TextStyle(
                    color: Color(0x9924252C),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              AllToDoAndFilterToDos()
            ],
          ),
        ));
  }
}
