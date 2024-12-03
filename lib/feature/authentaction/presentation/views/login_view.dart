import 'package:flutter/material.dart';

import 'widgets/login_text_feilds_and_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 458,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/intro_image.png',
                    fit: BoxFit.cover),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: LoginTextFieldsAndButton(),
              )
            ]),
          ),
        ));
  }
}
