import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/views/todo/view/todo_tile.dart';
import 'package:todo_app/views/todo/view_model/todo_view_model.dart';

class TodoList extends ConsumerWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(todoViewModelProvider);

    return model.todos.isEmpty
        ? const Center(
            child: Text(
              'Tap + to add an item',
              style: TextStyle(fontSize: 20.0),
            ),
          )
        : ListView.builder(
            itemCount: model.todos.length,
            itemBuilder: (BuildContext context, int index) {
              final todo = model.todos[index];
              return ProviderScope(
                child: TodoTile(todo: todo),
              );
            },
          );
  }
}
