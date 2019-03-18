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
      'languageCode',
      serializers.serialize(object.languageCode,
          specifiedType: const FullType(String)),
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
        case 'languageCode':
          result.languageCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SystemState extends SystemState {
  @override
  final String languageCode;

  factory _$SystemState([void updates(SystemStateBuilder b)]) =>
      (new SystemStateBuilder()..update(updates)).build();

  _$SystemState._({this.languageCode}) : super._() {
    if (languageCode == null) {
      throw new BuiltValueNullFieldError('SystemState', 'languageCode');
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
    return other is SystemState && languageCode == other.languageCode;
  }

  @override
  int get hashCode {
    return $jf($jc(0, languageCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SystemState')
          ..add('languageCode', languageCode))
        .toString();
  }
}

class SystemStateBuilder implements Builder<SystemState, SystemStateBuilder> {
  _$SystemState _$v;

  String _languageCode;
  String get languageCode => _$this._languageCode;
  set languageCode(String languageCode) => _$this._languageCode = languageCode;

  SystemStateBuilder();

  SystemStateBuilder get _$this {
    if (_$v != null) {
      _languageCode = _$v.languageCode;
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
    final _$result = _$v ?? new _$SystemState._(languageCode: languageCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
