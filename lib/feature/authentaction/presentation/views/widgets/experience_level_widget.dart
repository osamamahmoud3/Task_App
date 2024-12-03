import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/feature/authentaction/presentation/views/controller/auth_cubit.dart';

import '../../../../../core/styles/colors.dart';
import '../../../../../core/styles/font_styles.dart';

class ExperienceLevelWidget extends StatelessWidget {
  const ExperienceLevelWidget({
    super.key,
    required this.onChanged,
  });
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: ColorsManger.lightGray,
          )),
      child: Row(
        children: [
          DropdownButton(
              value: context.read<AuthCubit>().experienceLevel,
              underline: const SizedBox(),
              icon: const SizedBox(),
              hint: const SizedBox(
                width: 260,
                child: Text(
                  'Choose experience Level',
                  style: FontStyles.font14Medium,
                ),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'fresh',
                  child: Text('fresh'),
                ),
                DropdownMenuItem(
                  value: '1junior',
                  child: Text('junior'),
                ),
                DropdownMenuItem(
                  value: 'midLevel',
                  child: Text('midLevel'),
                ),
                DropdownMenuItem(
                  value: 'senior',
                  child: Text('senior'),
                ),
              ],
              onChanged: onChanged),
          const Spacer(),
          SizedBox(
              width: 24,
              child:
                  Center(child: SvgPicture.asset('assets/images/Vector.svg'))),
        ],
      ),
    );
  }
}
