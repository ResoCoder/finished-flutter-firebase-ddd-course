import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_switch_data.freezed.dart';

@freezed
abstract class IconSwitchData with _$IconSwitchData {
  const factory IconSwitchData({bool toggle, Icon icon}) = _IconSwitchData;
}
