// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'account',
      serializers.serialize(object.account,
          specifiedType: const FullType(String)),
      'isLogin',
      serializers.serialize(object.isLogin,
          specifiedType: const FullType(bool)),
    ];
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'account':
          result.account = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isLogin':
          result.isLogin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthState extends AuthState {
  @override
  final String account;
  @override
  final bool isLogin;
  @override
  final String error;

  factory _$AuthState([void updates(AuthStateBuilder b)]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.account, this.isLogin, this.error}) : super._() {
    if (account == null) {
      throw new BuiltValueNullFieldError('AuthState', 'account');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('AuthState', 'isLogin');
    }
  }

  @override
  AuthState rebuild(void updates(AuthStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        account == other.account &&
        isLogin == other.isLogin &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, account.hashCode), isLogin.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('account', account)
          ..add('isLogin', isLogin)
          ..add('error', error))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  String _account;
  String get account => _$this._account;
  set account(String account) => _$this._account = account;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _account = _$v.account;
      _isLogin = _$v.isLogin;
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void updates(AuthStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    final _$result = _$v ??
        new _$AuthState._(account: account, isLogin: isLogin, error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
