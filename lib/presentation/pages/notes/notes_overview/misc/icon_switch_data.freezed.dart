// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'icon_switch_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$IconSwitchData {
  bool get toggle;
  Icon get icon;

  IconSwitchData copyWith({bool toggle, Icon icon});
}

class _$IconSwitchDataTearOff {
  const _$IconSwitchDataTearOff();

  _IconSwitchData call({bool toggle, Icon icon}) {
    return _IconSwitchData(
      toggle: toggle,
      icon: icon,
    );
  }
}

const $IconSwitchData = _$IconSwitchDataTearOff();

class _$_IconSwitchData
    with DiagnosticableTreeMixin
    implements _IconSwitchData {
  const _$_IconSwitchData({this.toggle, this.icon});

  @override
  final bool toggle;
  @override
  final Icon icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IconSwitchData(toggle: $toggle, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IconSwitchData'))
      ..add(DiagnosticsProperty('toggle', toggle))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IconSwitchData &&
            (identical(other.toggle, toggle) ||
                const DeepCollectionEquality().equals(other.toggle, toggle)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(toggle) ^
      const DeepCollectionEquality().hash(icon);

  @override
  _$_IconSwitchData copyWith({
    Object toggle = freezed,
    Object icon = freezed,
  }) {
    return _$_IconSwitchData(
      toggle: toggle == freezed ? this.toggle : toggle as bool,
      icon: icon == freezed ? this.icon : icon as Icon,
    );
  }
}

abstract class _IconSwitchData implements IconSwitchData {
  const factory _IconSwitchData({bool toggle, Icon icon}) = _$_IconSwitchData;

  @override
  bool get toggle;
  @override
  Icon get icon;

  @override
  _IconSwitchData copyWith({bool toggle, Icon icon});
}
