import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_flutter/localization.dart';

part 'system_state.g.dart';

abstract class SystemState implements Built<SystemState, SystemStateBuilder> {
  factory SystemState() {
    return _$SystemState._(
        languageCode: LanguageSetting.availableLanguage.first);
  }

  SystemState._();

  String get languageCode;

  static Serializer<SystemState> get serializer => _$systemStateSerializer;
}
