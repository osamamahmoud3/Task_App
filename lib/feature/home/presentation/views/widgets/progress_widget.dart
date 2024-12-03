import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../controller/addtodo/addtodo_cubit.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget(
      {super.key, required this.onChanged, required this.progress});
  final ValueChanged<String?> onChanged;
  final String progress;

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  initState() {
    super.initState();
    context.read<AddtodoCubit>().status = widget.progress;
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
        color: context.read<AddtodoCubit>().status == 'inprogress'
            ? const Color(0xFFF0ECFF)
            : context.read<AddtodoCubit>().status == 'finished'
                ? const Color(0xFFE3F2FF)
                : const Color(0xFFFFE4F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            underline: const SizedBox(),
            icon: const SizedBox(),
            hint: Expanded(
              child: Text(
                widget.progress,
                style: TextStyle(
                  color: context.read<AddtodoCubit>().status == 'inprogress'
                      ? const Color(0xFF5F33E1)
                      : context.read<AddtodoCubit>().status == 'finished'
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
                value: 'waiting',
                child: Text('Waiting'),
              ),
              DropdownMenuItem(
                value: 'inprogress',
                child: Text('Inprogress'),
              ),
              DropdownMenuItem(
                value: 'finished',
                child: Text('Finished'),
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
                  color: context.read<AddtodoCubit>().status == 'inprogress'
                      ? const Color(0xFF5F33E1)
                      : context.read<AddtodoCubit>().status == 'finished'
                          ? const Color(0xFF0087FF)
                          : Colors.red,
                ),
              )),
        ],
      ),
    );
  }
}
