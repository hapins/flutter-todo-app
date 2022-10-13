import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
abstract class Todo implements _$Todo {
  const Todo._();

  const factory Todo({
    String? id,
    required String name,
    @Default(false) bool isDone,
  }) = _Todo;

  factory Todo.empty() => const Todo(name: '');

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
