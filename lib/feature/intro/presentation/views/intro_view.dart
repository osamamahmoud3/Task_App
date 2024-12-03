import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/styles/font_styles.dart';

import '../../../../core/router/routes.dart';
import '../../../../core/widgets/custom_button.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 482,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/intro_image.png',
                      fit: BoxFit.cover)),
              const Text('Task Management &\nTo-Do List',
                  textAlign: TextAlign.center, style: FontStyles.font24Bold),
              const SizedBox(
                height: 16,
              ),
              const Text(
                  'This productive tool is designed to help\nyou better manage your task \nproject-wise conveniently!',
                  textAlign: TextAlign.center,
                  style: FontStyles.font14Normal),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AppCustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Let’s Start',
                          textAlign: TextAlign.center,
                          style: FontStyles.font19Bold),
                      const SizedBox(
                        width: 6,
                      ),
                      SvgPicture.asset('assets/images/arrow.svg')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
