import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'language_model.g.dart';

abstract class LanguageEntity
    implements Built<LanguageEntity, LanguageEntityBuilder> {
  factory LanguageEntity([void updates(LanguageEntityBuilder b)]) =
      _$LanguageEntity;
  LanguageEntity._();

  String get languageCode;
  String get countryCode;
  String get displayName;

  static Serializer<LanguageEntity> get serializer =>
      _$languageEntitySerializer;
}
