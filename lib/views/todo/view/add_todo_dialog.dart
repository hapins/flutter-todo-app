import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/views/todo/view_model/todo_view_model.dart';

import '../../../models/todo_model.dart';

class AddTodoDialog extends HookConsumerWidget {
  static void show(BuildContext context, Todo item) {
    showDialog(
      context: context,
      builder: (context) => AddTodoDialog(item: item),
    );
  }

  final Todo item;

  const AddTodoDialog({Key? key, required this.item}) : super(key: key);

  bool get isUpdating => item.id != null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController(text: item.name);

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: textController,
              autofocus: true,
              decoration: const InputDecoration(hintText: 'Todo Name'),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: isUpdating
                        ? Colors.orange
                        : Theme.of(context).primaryColor),
                onPressed: () {
                  isUpdating
                      ? ref
                          .read(todoViewModelProvider.notifier)
                          .update("", false)
                      : ref
                          .read(todoViewModelProvider.notifier)
                          .create(textController.text);
                  Navigator.of(context).pop();
                },
                child: Text(isUpdating ? 'Update' : 'Add'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
