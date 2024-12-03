import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task/core/network/api_constant.dart';
import 'package:task/core/network/shared_prefs.dart';
import 'package:task/core/router/routes.dart';

import 'core/router/app_router.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ApiConstant.token == '' ? Routes.intro : Routes.home,
        onGenerateRoute: AppRouter.onGenerateRoute);
  }
}
