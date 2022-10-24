import "package:freezed_annotation/freezed_annotation.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/models/todo_model.dart';
import 'package:todo_app/repositories/todo_repository.dart';
import 'package:uuid/uuid.dart';

part 'todo_view_model.freezed.dart';

@freezed
class TodoViewModel with _$TodoViewModel {
  factory TodoViewModel({
    required List<Todo> todoList,
  }) = _TodoViewModel;
}

final todoViewModelProvider = StateNotifierProvider<TodoViewVM, TodoViewModel>(
  (ref) => TodoViewVM(ref),
);

class TodoViewVM extends StateNotifier<TodoViewModel> {
  TodoViewVM(this._ref) : super(TodoViewModel(todoList: []));

  final Ref _ref;
  late final _repository = _ref.read(todoRepositoryProvider);

  void create(String name) async {
    final id = const Uuid().v4();
    state =
        state.copyWith(todoList: [...state.todoList, Todo(id: id, name: name)]);
  }

  void updateName(String id, String name) async {
    final todoList = state.todoList.toList();
    final index = todoList.indexWhere((element) => element.id == id);
    final newTodo = Todo(id: id, name: name, isDone: todoList[index].isDone);
    todoList[index] = newTodo;
    state = state.copyWith(todoList: todoList);
  }

  void done(String id, bool isDone) async {
    // TODO
  }

  void delete(String id) async {
    // TODO
  }
}
