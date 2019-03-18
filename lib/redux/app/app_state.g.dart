// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'authState',
      serializers.serialize(object.authState,
          specifiedType: const FullType(AuthState)),
      'homeState',
      serializers.serialize(object.homeState,
          specifiedType: const FullType(HomeState)),
      'systemState',
      serializers.serialize(object.systemState,
          specifiedType: const FullType(SystemState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'authState':
          result.authState.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'homeState':
          result.homeState.replace(serializers.deserialize(value,
              specifiedType: const FullType(HomeState)) as HomeState);
          break;
        case 'systemState':
          result.systemState.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemState)) as SystemState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState authState;
  @override
  final HomeState homeState;
  @override
  final SystemState systemState;

  factory _$AppState([void updates(AppStateBuilder b)]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.authState, this.homeState, this.systemState}) : super._() {
    if (authState == null) {
      throw new BuiltValueNullFieldError('AppState', 'authState');
    }
    if (homeState == null) {
      throw new BuiltValueNullFieldError('AppState', 'homeState');
    }
    if (systemState == null) {
      throw new BuiltValueNullFieldError('AppState', 'systemState');
    }
  }

  @override
  AppState rebuild(void updates(AppStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        authState == other.authState &&
        homeState == other.homeState &&
        systemState == other.systemState;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, authState.hashCode), homeState.hashCode),
        systemState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('authState', authState)
          ..add('homeState', homeState)
          ..add('systemState', systemState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _authState;
  AuthStateBuilder get authState =>
      _$this._authState ??= new AuthStateBuilder();
  set authState(AuthStateBuilder authState) => _$this._authState = authState;

  HomeStateBuilder _homeState;
  HomeStateBuilder get homeState =>
      _$this._homeState ??= new HomeStateBuilder();
  set homeState(HomeStateBuilder homeState) => _$this._homeState = homeState;

  SystemStateBuilder _systemState;
  SystemStateBuilder get systemState =>
      _$this._systemState ??= new SystemStateBuilder();
  set systemState(SystemStateBuilder systemState) =>
      _$this._systemState = systemState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _authState = _$v.authState?.toBuilder();
      _homeState = _$v.homeState?.toBuilder();
      _systemState = _$v.systemState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void updates(AppStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              authState: authState.build(),
              homeState: homeState.build(),
              systemState: systemState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'authState';
        authState.build();
        _$failedField = 'homeState';
        homeState.build();
        _$failedField = 'systemState';
        systemState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
