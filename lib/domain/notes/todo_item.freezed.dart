// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$TodoItem {
  UniqueId get id;
  TodoName get name;
  bool get done;

  TodoItem copyWith({UniqueId id, TodoName name, bool done});
}

class _$TodoItemTearOff {
  const _$TodoItemTearOff();

  _TodoItem call(
      {@required UniqueId id, @required TodoName name, @required bool done}) {
    return _TodoItem(
      id: id,
      name: name,
      done: done,
    );
  }
}

const $TodoItem = _$TodoItemTearOff();

class _$_TodoItem with DiagnosticableTreeMixin implements _TodoItem {
  const _$_TodoItem(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  @override
  final UniqueId id;
  @override
  final TodoName name;
  @override
  final bool done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoItem(id: $id, name: $name, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$_TodoItem copyWith({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _$_TodoItem(
      id: id == freezed ? this.id : id as UniqueId,
      name: name == freezed ? this.name : name as TodoName,
      done: done == freezed ? this.done : done as bool,
    );
  }
}

abstract class _TodoItem implements TodoItem {
  const factory _TodoItem(
      {@required UniqueId id,
      @required TodoName name,
      @required bool done}) = _$_TodoItem;

  @override
  UniqueId get id;
  @override
  TodoName get name;
  @override
  bool get done;

  @override
  _TodoItem copyWith({UniqueId id, TodoName name, bool done});
}
