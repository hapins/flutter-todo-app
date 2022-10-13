import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/views/todo/view/add_todo_dialog.dart';
import 'package:todo_app/views/todo/view_model/todo_view_model.dart';

class TodoTile extends ConsumerWidget {
  final Todo todo;

  const TodoTile({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(todoViewModelProvider.notifier);

    return ListTile(
      key: ValueKey(todo.id),
      title: Text(todo.name),
      trailing: Checkbox(
        value: todo.isDone,
        onChanged: (val) => vm.update(todo.id ?? "", val ?? false),
      ),
      onTap: () => AddTodoDialog.show(context, todo),
      onLongPress: () => vm.delete(),
    );
  }
}
