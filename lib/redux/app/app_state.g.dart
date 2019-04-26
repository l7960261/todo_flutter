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
      'systemState',
      serializers.serialize(object.systemState,
          specifiedType: const FullType(SystemState)),
      'dashboradState',
      serializers.serialize(object.dashboradState,
          specifiedType: const FullType(DashboardState)),
      'walletState',
      serializers.serialize(object.walletState,
          specifiedType: const FullType(WalletState)),
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
        case 'systemState':
          result.systemState.replace(serializers.deserialize(value,
              specifiedType: const FullType(SystemState)) as SystemState);
          break;
        case 'dashboradState':
          result.dashboradState.replace(serializers.deserialize(value,
              specifiedType: const FullType(DashboardState)) as DashboardState);
          break;
        case 'walletState':
          result.walletState.replace(serializers.deserialize(value,
              specifiedType: const FullType(WalletState)) as WalletState);
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
  final SystemState systemState;
  @override
  final DashboardState dashboradState;
  @override
  final WalletState walletState;

  factory _$AppState([void updates(AppStateBuilder b)]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.authState, this.systemState, this.dashboradState, this.walletState})
      : super._() {
    if (authState == null) {
      throw new BuiltValueNullFieldError('AppState', 'authState');
    }
    if (systemState == null) {
      throw new BuiltValueNullFieldError('AppState', 'systemState');
    }
    if (dashboradState == null) {
      throw new BuiltValueNullFieldError('AppState', 'dashboradState');
    }
    if (walletState == null) {
      throw new BuiltValueNullFieldError('AppState', 'walletState');
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
        systemState == other.systemState &&
        dashboradState == other.dashboradState &&
        walletState == other.walletState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, authState.hashCode), systemState.hashCode),
            dashboradState.hashCode),
        walletState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('authState', authState)
          ..add('systemState', systemState)
          ..add('dashboradState', dashboradState)
          ..add('walletState', walletState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _authState;
  AuthStateBuilder get authState =>
      _$this._authState ??= new AuthStateBuilder();
  set authState(AuthStateBuilder authState) => _$this._authState = authState;

  SystemStateBuilder _systemState;
  SystemStateBuilder get systemState =>
      _$this._systemState ??= new SystemStateBuilder();
  set systemState(SystemStateBuilder systemState) =>
      _$this._systemState = systemState;

  DashboardStateBuilder _dashboradState;
  DashboardStateBuilder get dashboradState =>
      _$this._dashboradState ??= new DashboardStateBuilder();
  set dashboradState(DashboardStateBuilder dashboradState) =>
      _$this._dashboradState = dashboradState;

  WalletStateBuilder _walletState;
  WalletStateBuilder get walletState =>
      _$this._walletState ??= new WalletStateBuilder();
  set walletState(WalletStateBuilder walletState) =>
      _$this._walletState = walletState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _authState = _$v.authState?.toBuilder();
      _systemState = _$v.systemState?.toBuilder();
      _dashboradState = _$v.dashboradState?.toBuilder();
      _walletState = _$v.walletState?.toBuilder();
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
              systemState: systemState.build(),
              dashboradState: dashboradState.build(),
              walletState: walletState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'authState';
        authState.build();
        _$failedField = 'systemState';
        systemState.build();
        _$failedField = 'dashboradState';
        dashboradState.build();
        _$failedField = 'walletState';
        walletState.build();
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
