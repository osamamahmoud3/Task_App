import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nation_code_picker/nation_code_picker.dart';
import 'package:task/core/widgets/app_text_from_feild.dart';

import '../../../../core/styles/font_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import 'widgets/sign_up_text_fields_and_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              SizedBox(
                height: 280,
                width: MediaQuery.of(context).size.width,
                child:
                    Image.asset('assets/images/Frame 4.png', fit: BoxFit.fill),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SignUpTextFieldsAndButtons(),
              ),
            ]))));
  }
}
