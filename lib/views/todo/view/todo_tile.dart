import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/views/components/dialog_component.dart';
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
      title: Text(
        todo.name,
        style: todo.isDone
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        value: todo.isDone,
        onChanged: (val) => vm.done(todo.id ?? "", val ?? false),
      ),
      onTap: () => showDialog(
        context: context,
        builder: (context) => DialogComponent(
          id: todo.id,
          text: todo.name,
          hintText: "",
          buttonText: "update",
          buttonFunc: vm.updateName,
        ),
      ),
      onLongPress: () => vm.delete(todo.id ?? ""),
    );
  }
}
