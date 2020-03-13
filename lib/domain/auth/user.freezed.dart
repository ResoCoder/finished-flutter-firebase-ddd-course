// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$User {
  UniqueId get id;
  StringSingleLine get name;
  EmailAddress get emailAddress;

  User copyWith(
      {UniqueId id, StringSingleLine name, EmailAddress emailAddress});
}

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required EmailAddress emailAddress}) {
    return _User(
      id: id,
      name: name,
      emailAddress: emailAddress,
    );
  }
}

const $User = _$UserTearOff();

class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.id, @required this.name, @required this.emailAddress})
      : assert(id != null),
        assert(name != null),
        assert(emailAddress != null);

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final EmailAddress emailAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, emailAddress: $emailAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('emailAddress', emailAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress);

  @override
  _$_User copyWith({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
  }) {
    return _$_User(
      id: id == freezed ? this.id : id as UniqueId,
      name: name == freezed ? this.name : name as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? this.emailAddress
          : emailAddress as EmailAddress,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required EmailAddress emailAddress}) = _$_User;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  EmailAddress get emailAddress;

  @override
  _User copyWith(
      {UniqueId id, StringSingleLine name, EmailAddress emailAddress});
}
