import 'package:flutter/material.dart';

class MyTaskItem extends StatelessWidget {
  const MyTaskItem({
    super.key,
    required this.selected,
    required this.text,
  });
  final bool selected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: selected ? const Color(0xFF5F33E1) : const Color(0xFFF0ECFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: selected
                ? const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.08,
                    letterSpacing: 0.20,
                  )
                : const TextStyle(
                    color: Color(0xFF7C7C80),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: 0.20,
                  ),
          ),
        ],
      ),
    );
  }
}
