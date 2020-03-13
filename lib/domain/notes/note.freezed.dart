// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Note {
  UniqueId get id;
  NoteBody get body;
  NoteColor get color;
  List3<TodoItem> get todos;

  Note copyWith(
      {UniqueId id, NoteBody body, NoteColor color, List3<TodoItem> todos});
}

class _$NoteTearOff {
  const _$NoteTearOff();

  _Note call(
      {@required UniqueId id,
      @required NoteBody body,
      @required NoteColor color,
      @required List3<TodoItem> todos}) {
    return _Note(
      id: id,
      body: body,
      color: color,
      todos: todos,
    );
  }
}

const $Note = _$NoteTearOff();

class _$_Note with DiagnosticableTreeMixin implements _Note {
  const _$_Note(
      {@required this.id,
      @required this.body,
      @required this.color,
      @required this.todos})
      : assert(id != null),
        assert(body != null),
        assert(color != null),
        assert(todos != null);

  @override
  final UniqueId id;
  @override
  final NoteBody body;
  @override
  final NoteColor color;
  @override
  final List3<TodoItem> todos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Note(id: $id, body: $body, color: $color, todos: $todos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Note'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('todos', todos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Note &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(todos);

  @override
  _$_Note copyWith({
    Object id = freezed,
    Object body = freezed,
    Object color = freezed,
    Object todos = freezed,
  }) {
    return _$_Note(
      id: id == freezed ? this.id : id as UniqueId,
      body: body == freezed ? this.body : body as NoteBody,
      color: color == freezed ? this.color : color as NoteColor,
      todos: todos == freezed ? this.todos : todos as List3<TodoItem>,
    );
  }
}

abstract class _Note implements Note {
  const factory _Note(
      {@required UniqueId id,
      @required NoteBody body,
      @required NoteColor color,
      @required List3<TodoItem> todos}) = _$_Note;

  @override
  UniqueId get id;
  @override
  NoteBody get body;
  @override
  NoteColor get color;
  @override
  List3<TodoItem> get todos;

  @override
  _Note copyWith(
      {UniqueId id, NoteBody body, NoteColor color, List3<TodoItem> todos});
}
