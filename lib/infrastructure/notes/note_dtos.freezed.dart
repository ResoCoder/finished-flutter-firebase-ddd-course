// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'note_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

NoteDto _$NoteDtoFromJson(Map<String, dynamic> json) {
  return _NoteDto.fromJson(json);
}

mixin _$NoteDto {
  @JsonKey(ignore: true)
  String get id;
  String get body;
  int get color;
  List<TodoItemDto> get todos;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  NoteDto copyWith(
      {@JsonKey(ignore: true) String id,
      String body,
      int color,
      List<TodoItemDto> todos,
      @ServerTimestampConverter() FieldValue serverTimeStamp});

  Map<String, dynamic> toJson();
}

class _$NoteDtoTearOff {
  const _$NoteDtoTearOff();

  _NoteDto call(
      {@JsonKey(ignore: true) String id,
      @required String body,
      @required int color,
      @required List<TodoItemDto> todos,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _NoteDto(
      id: id,
      body: body,
      color: color,
      todos: todos,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

const $NoteDto = _$NoteDtoTearOff();

@JsonSerializable()
class _$_NoteDto implements _NoteDto {
  _$_NoteDto(
      {@JsonKey(ignore: true) this.id,
      @required this.body,
      @required this.color,
      @required this.todos,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(body != null),
        assert(color != null),
        assert(todos != null),
        assert(serverTimeStamp != null);

  factory _$_NoteDto.fromJson(Map<String, dynamic> json) =>
      _$_$_NoteDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String body;
  @override
  final int color;
  @override
  final List<TodoItemDto> todos;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'NoteDto(id: $id, body: $body, color: $color, todos: $todos, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(todos) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$_NoteDto copyWith({
    Object id = freezed,
    Object body = freezed,
    Object color = freezed,
    Object todos = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _$_NoteDto(
      id: id == freezed ? this.id : id as String,
      body: body == freezed ? this.body : body as String,
      color: color == freezed ? this.color : color as int,
      todos: todos == freezed ? this.todos : todos as List<TodoItemDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? this.serverTimeStamp
          : serverTimeStamp as FieldValue,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NoteDtoToJson(this);
  }
}

abstract class _NoteDto implements NoteDto {
  factory _NoteDto(
          {@JsonKey(ignore: true) String id,
          @required String body,
          @required int color,
          @required List<TodoItemDto> todos,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_NoteDto;

  factory _NoteDto.fromJson(Map<String, dynamic> json) = _$_NoteDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get body;
  @override
  int get color;
  @override
  List<TodoItemDto> get todos;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  @override
  _NoteDto copyWith(
      {@JsonKey(ignore: true) String id,
      String body,
      int color,
      List<TodoItemDto> todos,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

TodoItemDto _$TodoItemDtoFromJson(Map<String, dynamic> json) {
  return _TodoItemDto.fromJson(json);
}

mixin _$TodoItemDto {
  String get id;
  String get name;
  bool get done;

  TodoItemDto copyWith({String id, String name, bool done});

  Map<String, dynamic> toJson();
}

class _$TodoItemDtoTearOff {
  const _$TodoItemDtoTearOff();

  _TodoItemDto call(
      {@required String id, @required String name, @required bool done}) {
    return _TodoItemDto(
      id: id,
      name: name,
      done: done,
    );
  }
}

const $TodoItemDto = _$TodoItemDtoTearOff();

@JsonSerializable()
class _$_TodoItemDto implements _TodoItemDto {
  const _$_TodoItemDto(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  factory _$_TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'TodoItemDto(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoItemDto &&
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
  _$_TodoItemDto copyWith({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _$_TodoItemDto(
      id: id == freezed ? this.id : id as String,
      name: name == freezed ? this.name : name as String,
      done: done == freezed ? this.done : done as bool,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoItemDtoToJson(this);
  }
}

abstract class _TodoItemDto implements TodoItemDto {
  const factory _TodoItemDto(
      {@required String id,
      @required String name,
      @required bool done}) = _$_TodoItemDto;

  factory _TodoItemDto.fromJson(Map<String, dynamic> json) =
      _$_TodoItemDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get done;

  @override
  _TodoItemDto copyWith({String id, String name, bool done});
}
