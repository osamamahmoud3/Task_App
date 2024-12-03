import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/styles/colors.dart';
import 'package:task/core/widgets/custom_snak_bar.dart';

import '../controller/auth_cubit.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      bloc: context.read<AuthCubit>(),
      listenWhen: (previous, current) =>
          current is SignUpSuccess ||
          current is SignUpFailure ||
          current is SignUpLoading,
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          signUpSuccess: (responseData) {
            Navigator.of(context).pop();
            successSnackBar(
                'Sign up successfully welcome ${responseData.displayName}',
                context);
          },
          signUpFailure: (errorMessage) {
            Navigator.of(context).pop();

            errorSnackBar(errorMessage, context);
          },
          signUpLoading: () {
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
