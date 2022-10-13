import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/todo_model.dart';

abstract class TodoRepositoryInterface {
  Future<List<Todo>> getTodos();
  Future<Todo> createTodo({required Todo todo});
  Future<void> updateTodo({required Todo todo});
  Future<void> deleteTodo({required String todoId});
}

final todoRepositoryProvider =
    Provider<TodoRepository>((ref) => TodoRepository(ref));

class TodoRepository implements TodoRepositoryInterface {
  final Ref _ref;

  const TodoRepository(this._ref);

  @override
  Future<List<Todo>> getTodos() async {
    return [];
  }

  @override
  Future<Todo> createTodo({required Todo todo}) async {
    return todo;
  }

  @override
  Future<void> updateTodo({required Todo todo}) async {}

  @override
  Future<void> deleteTodo({required String todoId}) async {}
}
