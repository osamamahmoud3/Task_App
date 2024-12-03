import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/todo_cubit/todo_cubit.dart';

class TodoTitleAndStateItem extends StatelessWidget {
  const TodoTitleAndStateItem({
    super.key,
    required this.title,
    required this.state,
    required this.toDoId,
  });
  final String title, state, toDoId;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF24252C),
            fontSize: 16,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      const SizedBox(
        width: 15,
      ),
      Container(
        width: 55,
        height: 22,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: ShapeDecoration(
          color: const Color(0xFFFFE4F2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                state,
                style: const TextStyle(
                  color: Color(0xFFFF7D53),
                  fontSize: 11,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      Center(
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            final RenderBox button = context.findRenderObject() as RenderBox;
            final RenderBox overlay =
                Overlay.of(context).context.findRenderObject() as RenderBox;
            final RelativeRect position = RelativeRect.fromRect(
              Rect.fromPoints(
                button.localToGlobal(Offset.zero, ancestor: overlay),
                button.localToGlobal(button.size.bottomRight(Offset.zero),
                    ancestor: overlay),
              ),
              Offset.zero & overlay.size,
            );

            showMenu(
              color: Colors.white,
              context: context,
              position: position,
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              items: [
                const PopupMenuItem(
                  value: 'Edit',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(),
                    ],
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    context.read<ToDoCubit>().deleteToDo(todoId: toDoId);
                  },
                  value: 'Delete',
                  child: const Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ).then((value) {
              if (value != null) {
                print("Selected: $value");
              }
            });
          },
          icon: const Icon(Icons.more_vert),
        ),
      ),
    ]);
  }
}
