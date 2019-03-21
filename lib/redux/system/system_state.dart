import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_flutter/data/models/language_model.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/utils/constants.dart';
import 'package:todo_flutter/utils/themes.dart';

part 'system_state.g.dart';

abstract class SystemState implements Built<SystemState, SystemStateBuilder> {
  factory SystemState() {
    return _$SystemState._(
        curLanguage: kDefaultLanguage,
        curTheme: AppThemes.defaultTheme,
        languageMap: BuiltList<LanguageEntity>(AppLocalization.languageMap()));
  }

  SystemState._();

  @nullable
  String get curLanguage;
  @nullable
  String get curTheme;
  BuiltList<LanguageEntity> get languageMap;

  List<String> availableLanguage() {
    return languageMap.map((entity) => entity.languageCode).toList();
  }

  static Serializer<SystemState> get serializer => _$systemStateSerializer;
}
