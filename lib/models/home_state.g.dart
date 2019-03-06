// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeState> _$homeStateSerializer = new _$HomeStateSerializer();

class _$HomeStateSerializer implements StructuredSerializer<HomeState> {
  @override
  final Iterable<Type> types = const [HomeState, _$HomeState];
  @override
  final String wireName = 'HomeState';

  @override
  Iterable serialize(Serializers serializers, HomeState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'counter',
      serializers.serialize(object.counter, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  HomeState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'counter':
          result.counter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$HomeState extends HomeState {
  @override
  final int counter;

  factory _$HomeState([void updates(HomeStateBuilder b)]) =>
      (new HomeStateBuilder()..update(updates)).build();

  _$HomeState._({this.counter}) : super._() {
    if (counter == null) {
      throw new BuiltValueNullFieldError('HomeState', 'counter');
    }
  }

  @override
  HomeState rebuild(void updates(HomeStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState && counter == other.counter;
  }

  @override
  int get hashCode {
    return $jf($jc(0, counter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeState')..add('counter', counter))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState _$v;

  int _counter;
  int get counter => _$this._counter;
  set counter(int counter) => _$this._counter = counter;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    if (_$v != null) {
      _counter = _$v.counter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeState;
  }

  @override
  void update(void updates(HomeStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeState build() {
    final _$result = _$v ?? new _$HomeState._(counter: counter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
