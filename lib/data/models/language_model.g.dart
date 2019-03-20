// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LanguageEntity> _$languageEntitySerializer =
    new _$LanguageEntitySerializer();

class _$LanguageEntitySerializer
    implements StructuredSerializer<LanguageEntity> {
  @override
  final Iterable<Type> types = const [LanguageEntity, _$LanguageEntity];
  @override
  final String wireName = 'LanguageEntity';

  @override
  Iterable serialize(Serializers serializers, LanguageEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'languageCode',
      serializers.serialize(object.languageCode,
          specifiedType: const FullType(String)),
      'countryCode',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
      'displayName',
      serializers.serialize(object.displayName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LanguageEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LanguageEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'languageCode':
          result.languageCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countryCode':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LanguageEntity extends LanguageEntity {
  @override
  final String languageCode;
  @override
  final String countryCode;
  @override
  final String displayName;

  factory _$LanguageEntity([void updates(LanguageEntityBuilder b)]) =>
      (new LanguageEntityBuilder()..update(updates)).build();

  _$LanguageEntity._({this.languageCode, this.countryCode, this.displayName})
      : super._() {
    if (languageCode == null) {
      throw new BuiltValueNullFieldError('LanguageEntity', 'languageCode');
    }
    if (countryCode == null) {
      throw new BuiltValueNullFieldError('LanguageEntity', 'countryCode');
    }
    if (displayName == null) {
      throw new BuiltValueNullFieldError('LanguageEntity', 'displayName');
    }
  }

  @override
  LanguageEntity rebuild(void updates(LanguageEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageEntityBuilder toBuilder() =>
      new LanguageEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LanguageEntity &&
        languageCode == other.languageCode &&
        countryCode == other.countryCode &&
        displayName == other.displayName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, languageCode.hashCode), countryCode.hashCode),
        displayName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LanguageEntity')
          ..add('languageCode', languageCode)
          ..add('countryCode', countryCode)
          ..add('displayName', displayName))
        .toString();
  }
}

class LanguageEntityBuilder
    implements Builder<LanguageEntity, LanguageEntityBuilder> {
  _$LanguageEntity _$v;

  String _languageCode;
  String get languageCode => _$this._languageCode;
  set languageCode(String languageCode) => _$this._languageCode = languageCode;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  LanguageEntityBuilder();

  LanguageEntityBuilder get _$this {
    if (_$v != null) {
      _languageCode = _$v.languageCode;
      _countryCode = _$v.countryCode;
      _displayName = _$v.displayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LanguageEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LanguageEntity;
  }

  @override
  void update(void updates(LanguageEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LanguageEntity build() {
    final _$result = _$v ??
        new _$LanguageEntity._(
            languageCode: languageCode,
            countryCode: countryCode,
            displayName: displayName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
