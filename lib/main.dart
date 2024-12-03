import 'package:flutter/material.dart';
import 'package:task/todo_app.dart';

import 'core/network/api_constant.dart';
import 'core/network/shared_prefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiConstant.token = await SharedPrefs.getFromCache(key: 'token');
  ApiConstant.refreshToken =
      await SharedPrefs.getFromCache(key: 'refreshToken');

  runApp(const TodoApp());
}
