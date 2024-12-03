import 'package:flutter/material.dart';

import '../styles/colors.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({
    super.key, this.onPressed, required this.child,
  });
final void Function()? onPressed;
final Widget  child;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 49,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      minWidth: double.infinity,
      color: ColorsManger.primaryColor,
      onPressed: onPressed,
      child: child
    );
  }
}
