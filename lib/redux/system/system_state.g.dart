// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SystemState> _$systemStateSerializer = new _$SystemStateSerializer();

class _$SystemStateSerializer implements StructuredSerializer<SystemState> {
  @override
  final Iterable<Type> types = const [SystemState, _$SystemState];
  @override
  final String wireName = 'SystemState';

  @override
  Iterable serialize(Serializers serializers, SystemState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'curLanguage',
      serializers.serialize(object.curLanguage,
          specifiedType: const FullType(String)),
      'curThemeKey',
      serializers.serialize(object.curThemeKey,
          specifiedType: const FullType(String)),
      'languageMap',
      serializers.serialize(object.languageMap,
          specifiedType: const FullType(
              BuiltList, const [const FullType(LanguageEntity)])),
    ];

    return result;
  }

  @override
  SystemState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SystemStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'curLanguage':
          result.curLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'curThemeKey':
          result.curThemeKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'languageMap':
          result.languageMap.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LanguageEntity)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SystemState extends SystemState {
  @override
  final String curLanguage;
  @override
  final String curThemeKey;
  @override
  final BuiltList<LanguageEntity> languageMap;

  factory _$SystemState([void updates(SystemStateBuilder b)]) =>
      (new SystemStateBuilder()..update(updates)).build();

  _$SystemState._({this.curLanguage, this.curThemeKey, this.languageMap})
      : super._() {
    if (curLanguage == null) {
      throw new BuiltValueNullFieldError('SystemState', 'curLanguage');
    }
    if (curThemeKey == null) {
      throw new BuiltValueNullFieldError('SystemState', 'curThemeKey');
    }
    if (languageMap == null) {
      throw new BuiltValueNullFieldError('SystemState', 'languageMap');
    }
  }

  @override
  SystemState rebuild(void updates(SystemStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemStateBuilder toBuilder() => new SystemStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemState &&
        curLanguage == other.curLanguage &&
        curThemeKey == other.curThemeKey &&
        languageMap == other.languageMap;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, curLanguage.hashCode), curThemeKey.hashCode),
        languageMap.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SystemState')
          ..add('curLanguage', curLanguage)
          ..add('curThemeKey', curThemeKey)
          ..add('languageMap', languageMap))
        .toString();
  }
}

class SystemStateBuilder implements Builder<SystemState, SystemStateBuilder> {
  _$SystemState _$v;

  String _curLanguage;
  String get curLanguage => _$this._curLanguage;
  set curLanguage(String curLanguage) => _$this._curLanguage = curLanguage;

  String _curThemeKey;
  String get curThemeKey => _$this._curThemeKey;
  set curThemeKey(String curThemeKey) => _$this._curThemeKey = curThemeKey;

  ListBuilder<LanguageEntity> _languageMap;
  ListBuilder<LanguageEntity> get languageMap =>
      _$this._languageMap ??= new ListBuilder<LanguageEntity>();
  set languageMap(ListBuilder<LanguageEntity> languageMap) =>
      _$this._languageMap = languageMap;

  SystemStateBuilder();

  SystemStateBuilder get _$this {
    if (_$v != null) {
      _curLanguage = _$v.curLanguage;
      _curThemeKey = _$v.curThemeKey;
      _languageMap = _$v.languageMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SystemState;
  }

  @override
  void update(void updates(SystemStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SystemState build() {
    _$SystemState _$result;
    try {
      _$result = _$v ??
          new _$SystemState._(
              curLanguage: curLanguage,
              curThemeKey: curThemeKey,
              languageMap: languageMap.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'languageMap';
        languageMap.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SystemState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
