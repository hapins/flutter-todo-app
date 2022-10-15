import "package:freezed_annotation/freezed_annotation.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/repositories/todo_repository.dart';
import 'package:uuid/uuid.dart';

part 'todo_view_model.freezed.dart';

@freezed
class TodoViewModel with _$TodoViewModel {
  factory TodoViewModel({
    required List<Todo> todos,
  }) = _TodoViewModel;
}

final todoViewModelProvider = StateNotifierProvider<TodoViewVM, TodoViewModel>(
  (ref) => TodoViewVM(ref),
);

class TodoViewVM extends StateNotifier<TodoViewModel> {
  TodoViewVM(this._ref) : super(TodoViewModel(todos: []));

  final Ref _ref;
  late final _repository = _ref.read(todoRepositoryProvider);

  void create(String name) async {
    final id = const Uuid().v4();
    state = state.copyWith(todos: [...state.todos, Todo(id: id, name: name)]);
  }

  void updateName(String id, String name) async {
    final todos = state.todos.toList();
    final index = todos.indexWhere((element) => element.id == id);
    final newTodo = Todo(id: id, name: name, isDone: todos[index].isDone);
    todos[index] = newTodo;
    state = state.copyWith(todos: todos);
  }

  void done(String id, bool isDone) async {
    // TODO
  }

  void delete(String id) async {
    // TODO
  }
}
