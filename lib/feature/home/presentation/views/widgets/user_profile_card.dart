import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/core/styles/colors.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
  });
  final String title, subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF5F5F5),
      shadowColor: const Color(0x00000000),
      child: ListTile(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          title: SizedBox(
            width: 296,
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0x662F2F2F),
                fontSize: 12,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                height: 2,
              ),
            ),
          ),
          subtitle: SizedBox(
            width: 296,
            child: Text(
              subtitle,
              style: const TextStyle(
                color: Color(0x992F2F2F),
                fontSize: 18,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                height: 0.07,
                letterSpacing: 0.20,
              ),
            ),
          ),
          trailing: trailing),
    );
  }
}
