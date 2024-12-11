import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final ValueChanged<ToDo> onToDoChanged;
  final ValueChanged<String> onDeleteItem;
  final ValueChanged<ToDo> onEditItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
    required this.onEditItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () => onToDoChanged(todo),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.todoText ?? '',
              style: TextStyle(
                fontSize: 16,
                color: tdBlack,
                decoration: todo.isDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              todo.date ?? '',
              style: const TextStyle(
                fontSize: 12,
                color: tdGrey,
              ),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: tdBlue),
              tooltip: 'Edit ToDo',
              onPressed: () => onEditItem(todo),
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: tdRed),
              tooltip: 'Delete ToDo',
              onPressed: () => onDeleteItem(todo.id!),
            ),
          ],
        ),
      ),
    );
  }
}
