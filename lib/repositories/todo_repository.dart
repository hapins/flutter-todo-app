import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/todo_model.dart';

abstract class TodoRepositoryInterface {
  Future<List<Todo>> getTodoList();
  Stream<List<Todo>> getTodoListStream();
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
  Future<List<Todo>> getTodoList() async {
    throw Error();
  }

  @override
  Stream<List<Todo>> getTodoListStream() {
    throw Error();
  }

  @override
  Future<Todo> createTodo({required Todo todo}) async {
    throw Error();
  }

  @override
  Future<void> updateTodo({required Todo todo}) async {
    throw Error();
  }

  @override
  Future<void> deleteTodo({required String todoId}) async {
    throw Error();
  }
}
