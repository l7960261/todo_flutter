// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DashboardState> _$dashboardStateSerializer =
    new _$DashboardStateSerializer();

class _$DashboardStateSerializer
    implements StructuredSerializer<DashboardState> {
  @override
  final Iterable<Type> types = const [DashboardState, _$DashboardState];
  @override
  final String wireName = 'DashboardState';

  @override
  Iterable serialize(Serializers serializers, DashboardState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(DashboardEntity)));
    }

    return result;
  }

  @override
  DashboardState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DashboardStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DashboardEntity))
              as DashboardEntity);
          break;
      }
    }

    return result.build();
  }
}

class _$DashboardState extends DashboardState {
  @override
  final DashboardEntity data;

  factory _$DashboardState([void updates(DashboardStateBuilder b)]) =>
      (new DashboardStateBuilder()..update(updates)).build();

  _$DashboardState._({this.data}) : super._();

  @override
  DashboardState rebuild(void updates(DashboardStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardStateBuilder toBuilder() =>
      new DashboardStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardState && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DashboardState')..add('data', data))
        .toString();
  }
}

class DashboardStateBuilder
    implements Builder<DashboardState, DashboardStateBuilder> {
  _$DashboardState _$v;

  DashboardEntityBuilder _data;
  DashboardEntityBuilder get data =>
      _$this._data ??= new DashboardEntityBuilder();
  set data(DashboardEntityBuilder data) => _$this._data = data;

  DashboardStateBuilder();

  DashboardStateBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DashboardState;
  }

  @override
  void update(void updates(DashboardStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DashboardState build() {
    _$DashboardState _$result;
    try {
      _$result = _$v ?? new _$DashboardState._(data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DashboardState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
