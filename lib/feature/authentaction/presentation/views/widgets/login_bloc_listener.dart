import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/router/routes.dart';
import 'package:task/feature/authentaction/presentation/views/controller/auth_cubit.dart';

import '../../../../../core/network/api_constant.dart';
import '../../../../../core/network/shared_prefs.dart';
import '../../../../../core/styles/colors.dart';
import '../../../../../core/widgets/custom_snak_bar.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loginSuccess: (responseData) async {
            await SharedPrefs.insertToCache(
              key: 'token',
              value: responseData.accessToken ?? '',
            );
            await SharedPrefs.insertToCache(
              key: 'refreshToken',
              value: responseData.refreshToken ?? '',
            );
            ApiConstant.token = await SharedPrefs.getFromCache(key: 'token');
            ApiConstant.refreshToken =
                await SharedPrefs.getFromCache(key: 'refreshToken');
            log(responseData.refreshToken.toString());

            Navigator.pushReplacementNamed(context, Routes.home);
          },
          loginError: (errorMessage) {
            Navigator.of(context).pop();
            errorSnackBar(errorMessage, context);
          },
          loginLoading: () {
            showDialog(
                context: context,
                builder: (context) => const Center(
                        child: CircularProgressIndicator(
                      color: ColorsManger.primaryColor,
                    )));
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
