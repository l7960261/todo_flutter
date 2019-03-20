import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_flutter/data/models/language_model.dart';

part 'system_state.g.dart';

abstract class SystemState implements Built<SystemState, SystemStateBuilder> {
  factory SystemState() {
    return _$SystemState._(
        curLanguage: 'en',
        languageMap: BuiltList<LanguageEntity>([
          LanguageEntity((b) => b
            ..languageCode = 'en'
            ..countryCode = 'US'
            ..displayName = 'English (en)'),
          LanguageEntity((b) => b
            ..languageCode = 'zh-Hans'
            ..countryCode = ''
            ..displayName = '简体字 (zh-Hans)'),
          LanguageEntity((b) => b
            ..languageCode = 'th'
            ..countryCode = 'TH'
            ..displayName = 'ไทย (th)'),
          LanguageEntity((b) => b
            ..languageCode = 'vi'
            ..countryCode = ''
            ..displayName = 'Tiếng Việt (vi)')
        ]),
        curThemeKey: 'ninga');
  }

  SystemState._();

  String get curLanguage;
  String get curThemeKey;
  BuiltList<LanguageEntity> get languageMap;

  List<String> availableLanguage() {
    return languageMap.map((entity) => entity.languageCode).toList();
  }

  static Serializer<SystemState> get serializer => _$systemStateSerializer;
}
