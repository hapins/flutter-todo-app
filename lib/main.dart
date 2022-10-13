import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/views/todo/view/add_todo_dialog.dart';
import 'package:todo_app/views/todo/view/todo_list.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                true ? Icons.check_circle : Icons.check_circle_outline,
              ))
        ],
      ),
      body: const TodoList(),
      floatingActionButton: FloatingActionButton(
        // アイテム登録ダイアログを表示
        onPressed: () => AddTodoDialog.show(context, Todo.empty()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
