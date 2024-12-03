import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nation_code_picker/nation_code_picker.dart';
import 'package:task/core/router/routes.dart';
import 'package:task/feature/authentaction/presentation/views/controller/auth_cubit.dart';

import '../../../../../core/styles/font_styles.dart';
import '../../../../../core/widgets/app_text_from_feild.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'login_bloc_listener.dart';

class LoginTextFieldsAndButton extends StatefulWidget {
  const LoginTextFieldsAndButton({super.key});

  @override
  State<LoginTextFieldsAndButton> createState() =>
      _LoginTextFieldsAndButtonState();
}

class _LoginTextFieldsAndButtonState extends State<LoginTextFieldsAndButton> {
  NationCodes _selectedNationCode = NationCodes.eg;
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Login', style: FontStyles.font24Bold),
          const SizedBox(
            height: 16,
          ),
          AppTextFromField(
            controller: context.read<AuthCubit>().loginPhoneController,
            prefixIcon: Container(
              width: 110,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NationCodePicker(
                    defaultNationCode: _selectedNationCode,
                    dialCodeColor: const Color(0xFF7F7F7F),
                    dialCodeFontWeight: FontWeight.bold,
                    dialCodeFontFamily: 'DM Sans',
                    onNationSelected: (p0) {
                      setState(() {
                        _selectedNationCode = p0;
                        context.read<AuthCubit>().countryCode =
                            p0.dialCode.toString();
                      });
                    },
                  ),
                  SizedBox(
                      width: 24,
                      child: Center(
                          child: SvgPicture.asset('assets/images/Vector.svg'))),
                ],
              ),
            ),
            keyboardType: TextInputType.number,
            hintText: '123 456-7890',
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFromField(
            controller: context.read<AuthCubit>().loginPasswordController,
            obscureText: isObscureText,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                icon: isObscureText
                    ? const Icon(Icons.visibility_off_rounded)
                    : const Icon(Icons.visibility_outlined)),
            hintText: 'Password',
          ),
          const SizedBox(
            height: 16,
          ),
          AppCustomButton(
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                  letterSpacing: 0.20,
                ),
              ),
              onPressed: () {
                validateAndLogin();
              }),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                        text: 'Didn’t have any account? ',
                        style: FontStyles.font14Normal),
                    TextSpan(
                        text: 'Sign Up here',
                        style: FontStyles.font14Bold,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, Routes.signUp);
                          }),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const LoginBlocListener(),
        ],
      ),
    );
  }

  void validateAndLogin() {
    if (context.read<AuthCubit>().formKey.currentState!.validate()) {
      context.read<AuthCubit>().emitLogin();
    }
  }
}
