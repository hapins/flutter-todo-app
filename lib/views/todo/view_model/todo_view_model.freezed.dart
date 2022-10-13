// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoViewModel {
  List<Todo> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoViewModelCopyWith<TodoViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoViewModelCopyWith<$Res> {
  factory $TodoViewModelCopyWith(
          TodoViewModel value, $Res Function(TodoViewModel) then) =
      _$TodoViewModelCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$TodoViewModelCopyWithImpl<$Res>
    implements $TodoViewModelCopyWith<$Res> {
  _$TodoViewModelCopyWithImpl(this._value, this._then);

  final TodoViewModel _value;
  // ignore: unused_field
  final $Res Function(TodoViewModel) _then;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoViewModelCopyWith<$Res>
    implements $TodoViewModelCopyWith<$Res> {
  factory _$$_TodoViewModelCopyWith(
          _$_TodoViewModel value, $Res Function(_$_TodoViewModel) then) =
      __$$_TodoViewModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$_TodoViewModelCopyWithImpl<$Res>
    extends _$TodoViewModelCopyWithImpl<$Res>
    implements _$$_TodoViewModelCopyWith<$Res> {
  __$$_TodoViewModelCopyWithImpl(
      _$_TodoViewModel _value, $Res Function(_$_TodoViewModel) _then)
      : super(_value, (v) => _then(v as _$_TodoViewModel));

  @override
  _$_TodoViewModel get _value => super._value as _$_TodoViewModel;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_$_TodoViewModel(
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodoViewModel implements _TodoViewModel {
  _$_TodoViewModel({required final List<Todo> todos}) : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoViewModel(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoViewModel &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  _$$_TodoViewModelCopyWith<_$_TodoViewModel> get copyWith =>
      __$$_TodoViewModelCopyWithImpl<_$_TodoViewModel>(this, _$identity);
}

abstract class _TodoViewModel implements TodoViewModel {
  factory _TodoViewModel({required final List<Todo> todos}) = _$_TodoViewModel;

  @override
  List<Todo> get todos;
  @override
  @JsonKey(ignore: true)
  _$$_TodoViewModelCopyWith<_$_TodoViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
