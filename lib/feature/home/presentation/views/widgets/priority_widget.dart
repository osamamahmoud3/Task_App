import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/feature/home/presentation/controller/addtodo/addtodo_cubit.dart';

class priorityWidget extends StatefulWidget {
  const priorityWidget({
    super.key,
    required this.onChanged,
    this.prioity,
  });
  final ValueChanged<String?> onChanged;
  final String? prioity;

  @override
  State<priorityWidget> createState() => _priorityWidgetState();
}

class _priorityWidgetState extends State<priorityWidget> {
  @override
  initState() {
    super.initState();
    context.read<AddtodoCubit>().priority = widget.prioity;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      padding: const EdgeInsets.only(
        left: 24,
        right: 10,
      ),
      decoration: ShapeDecoration(
        color: context.read<AddtodoCubit>().priority == 'medium'
            ? const Color(0xFFF0ECFF)
            : context.read<AddtodoCubit>().priority == 'low'
                ? const Color(0xFFE3F2FF)
                : const Color(0xFFFFE4F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.flag_outlined,
            color: context.read<AddtodoCubit>().priority == 'medium'
                ? const Color(0xFF5F33E1)
                : context.read<AddtodoCubit>().priority == 'low'
                    ? const Color(0xFF0087FF)
                    : Colors.red,
          ),
          const SizedBox(width: 10),
          DropdownButton(
            underline: const SizedBox(),
            icon: const SizedBox(),
            hint: Expanded(
              child: Text(
                ' ${context.read<AddtodoCubit>().priority ?? 'Medium'} Priority',
                style: TextStyle(
                  color: context.read<AddtodoCubit>().priority == 'medium'
                      ? const Color(0xFF5F33E1)
                      : context.read<AddtodoCubit>().priority == 'low'
                          ? const Color(0xFF0087FF)
                          : Colors.red,
                  fontSize: 16,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                  letterSpacing: 0.20,
                ),
              ),
            ),
            items: const [
              DropdownMenuItem(
                value: 'low',
                child: Text('low'),
              ),
              DropdownMenuItem(
                value: 'medium',
                child: Text('medium'),
              ),
              DropdownMenuItem(
                value: 'high',
                child: Text('high'),
              ),
            ],
            onChanged: widget.onChanged,
          ),
          const Spacer(),
          SizedBox(
              width: 24,
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/arrow_down.svg',
                  color: context.read<AddtodoCubit>().priority == 'medium'
                      ? const Color(0xFF5F33E1)
                      : context.read<AddtodoCubit>().priority == 'low'
                          ? const Color(0xFF0087FF)
                          : Colors.red,
                ),
              )),
        ],
      ),
    );
  }
}
