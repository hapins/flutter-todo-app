import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/views/components/dialog_component.dart';
import 'package:todo_app/views/todo/view/todo_list.dart';
import 'package:todo_app/views/todo/view_model/todo_view_model.dart';

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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(todoViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        actions: const [],
      ),
      body: const TodoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => DialogComponent(
            hintText: "todo name",
            buttonText: "add",
            buttonFunc: vm.create,
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
