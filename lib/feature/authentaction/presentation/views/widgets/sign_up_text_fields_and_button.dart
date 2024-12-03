import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nation_code_picker/nation_code_picker.dart';
import 'package:task/core/widgets/custom_snak_bar.dart';
import 'package:task/feature/authentaction/presentation/views/controller/auth_cubit.dart';

import '../../../../../core/styles/font_styles.dart';
import '../../../../../core/widgets/app_text_from_feild.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'experience_level_widget.dart';
import 'signup_bloc_listener.dart';

class SignUpTextFieldsAndButtons extends StatefulWidget {
  const SignUpTextFieldsAndButtons({super.key});

  @override
  State<SignUpTextFieldsAndButtons> createState() =>
      _SignUpTextFieldsAndButtonsState();
}

class _SignUpTextFieldsAndButtonsState
    extends State<SignUpTextFieldsAndButtons> {
  NationCodes _selectedNationCode = NationCodes.eg;
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().formKey,
      child: Column(
        children: [
          const SizedBox(
            width: 360,
            child: Text('Login', style: FontStyles.font24Bold),
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFromField(
              controller: context.read<AuthCubit>().nameController,
              hintText: 'Name'),
          const SizedBox(
            height: 16,
          ),
          AppTextFromField(
            keyboardType: TextInputType.number,
            controller: context.read<AuthCubit>().phoneController,
            prefixIcon: Container(
              width: 120,
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
                        log(p0.dialCode.toString());
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
            hintText: '123 456-7890',
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFromField(
              keyboardType: TextInputType.number,
              controller: context.read<AuthCubit>().yearsOfExperienceController,
              hintText: 'Years of experience...'),
          const SizedBox(
            height: 16,
          ),
          ExperienceLevelWidget(
            onChanged: (level) {
              context.read<AuthCubit>().experienceLevel = level;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 16,
          ),
          AppTextFromField(
              controller: context.read<AuthCubit>().addressController,
              hintText: 'Address...'),
          const SizedBox(
            height: 16,
          ),
          AppTextFromField(
            controller: context.read<AuthCubit>().passwordController,
            obscureText: isObscureText,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                icon: isObscureText
                    ? const Icon(
                        Icons.visibility_off_rounded,
                        color: Color(0XFFBABABA),
                      )
                    : const Icon(
                        Icons.visibility_outlined,
                        color: Color(0XFFBABABA),
                      )),
            hintText: 'Password',
          ),
          const SizedBox(
            height: 16,
          ),
          AppCustomButton(
              child: const Text('Sign In', style: FontStyles.font16Bold),
              onPressed: () {
                validateAndSignUp();
              }),
          const SizedBox(
            height: 24,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Already have any account? ',
                          style: FontStyles.font14Normal),
                      TextSpan(text: 'Sign in', style: FontStyles.font14Bold),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )),
          ]),
          const SizedBox(
            height: 16,
          ),
          const SignUpBlocListener()
        ],
      ),
    );
  }

  void validateAndSignUp() {
    if (context.read<AuthCubit>().formKey.currentState!.validate()) {
      if (context.read<AuthCubit>().experienceLevel != null) {
        context.read<AuthCubit>().emitSignUp();
      } else {
        errorSnackBar('Please select experience level', context);
      }
    }
  }
}
