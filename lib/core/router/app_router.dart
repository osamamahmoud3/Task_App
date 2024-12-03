import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/network/api_service.dart';
import 'package:task/core/network/dio_factory.dart';
import 'package:task/core/router/routes.dart';
import 'package:task/feature/authentaction/data/repos/auth_repo_impl.dart';
import 'package:task/feature/authentaction/presentation/views/controller/auth_cubit.dart';
import 'package:task/feature/authentaction/presentation/views/login_view.dart';
import 'package:task/feature/authentaction/presentation/views/signup_view.dart';
import 'package:task/feature/home/data/repos/image_repo_impl.dart';
import 'package:task/feature/home/data/repos/todo_repo_impl.dart';
import 'package:task/feature/home/presentation/views/add_todo_view.dart';

import '../../feature/home/data/repos/user_repo_impl.dart';
import '../../feature/home/domin/entities/todo_entity.dart';
import '../../feature/home/domin/use_cases/add_task_use_case.dart';
import '../../feature/home/presentation/controller/addtodo/addtodo_cubit.dart';
import '../../feature/home/presentation/controller/todo_cubit/todo_cubit.dart';
import '../../feature/home/presentation/controller/user_cubit/user_cubit.dart';
import '../../feature/home/presentation/views/home_view.dart';
import '../../feature/home/presentation/views/profile_view.dart';
import '../../feature/home/presentation/views/task_details.dart';
import '../../feature/home/presentation/views/widgets/qr_code_scanner.dart';
import '../../feature/intro/presentation/views/intro_view.dart';

abstract class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.intro:
        return MaterialPageRoute(
          builder: (_) => const IntroView(),
        );
      case Routes.qrCodeScanner:
        return MaterialPageRoute(
          builder: (_) => const QrCodeScanner(),
        );
      case Routes.todoDetails:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => ToDoCubit(
                        TodoRepoImpl(
                            apiService: ApiService(dio: DioFactory.getDio())),
                      )..fetchToDos(),
                      child: const HomeView(),
                    ),
                    BlocProvider(
                      create: (context) => AddtodoCubit(AddTaskUseCase(
                        imageRepo: ImageRepoImpl(
                          ApiService(dio: DioFactory.getDio()),
                        ),
                        toDoRepo: TodoRepoImpl(
                            apiService: ApiService(dio: DioFactory.getDio())),
                      )),
                    )
                  ],
                  child: TaskDetails(
                    todoEntity: settings.arguments as TodoEntity,
                  ),
                ));
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => UserCubit(UserRepoImpl(
              apiService: ApiService(dio: DioFactory.getDio()),
            ))
              ..getUserProfile(),
            child: const ProfileView(),
          ),
        );
      case Routes.addToDo:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AddtodoCubit(AddTaskUseCase(
                    imageRepo: ImageRepoImpl(
                      ApiService(dio: DioFactory.getDio()),
                    ),
                    toDoRepo: TodoRepoImpl(
                        apiService: ApiService(dio: DioFactory.getDio())),
                  )),
                  child: const AddToDoView(),
                ));
      case Routes.home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => ToDoCubit(
                    TodoRepoImpl(
                        apiService: ApiService(dio: DioFactory.getDio())),
                  )..fetchToDos(),
                  child: const HomeView(),
                ));
      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(AuthRepoImpl(
                      apiService: ApiService(dio: DioFactory.getDio()))),
                  child: const LoginView(),
                ));
      case Routes.signUp:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(AuthRepoImpl(
                      apiService: ApiService(dio: DioFactory.getDio()))),
                  child: const SignUpView(),
                ));
      default:
        return MaterialPageRoute(builder: (_) => const NoRouteView());
    }
  }
}

class NoRouteView extends StatelessWidget {
  const NoRouteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            'No route defined for ${ModalRoute.of(context)!.settings.name}'),
      ),
    );
  }
}
