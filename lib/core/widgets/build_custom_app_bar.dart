import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildCustomAppBar(BuildContext context, String title,
    [List<Widget>? action]) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    actions: action,
    title: SizedBox(
      width: 299,
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF24252C),
          fontSize: 16,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
          height: 0.09,
        ),
      ),
    ),
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SizedBox(
        height: 24,
        width: 24,
        child: Center(
          child: SvgPicture.asset('assets/images/arrow_back.svg'),
        ),
      ),
    ),
  );
}
