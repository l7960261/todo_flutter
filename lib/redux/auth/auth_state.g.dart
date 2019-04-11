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
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'secret',
      serializers.serialize(object.secret,
          specifiedType: const FullType(String)),
      'picture',
      serializers.serialize(object.picture,
          specifiedType: const FullType(String)),
      'qrCode',
      serializers.serialize(object.qrCode,
          specifiedType: const FullType(String)),
      'isAuthenticated',
      serializers.serialize(object.isAuthenticated,
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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secret':
          result.secret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qrCode':
          result.qrCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isAuthenticated':
          result.isAuthenticated = serializers.deserialize(value,
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
  final String name;
  @override
  final String email;
  @override
  final String secret;
  @override
  final String picture;
  @override
  final String qrCode;
  @override
  final bool isAuthenticated;
  @override
  final String error;

  factory _$AuthState([void updates(AuthStateBuilder b)]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._(
      {this.name,
      this.email,
      this.secret,
      this.picture,
      this.qrCode,
      this.isAuthenticated,
      this.error})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('AuthState', 'name');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('AuthState', 'email');
    }
    if (secret == null) {
      throw new BuiltValueNullFieldError('AuthState', 'secret');
    }
    if (picture == null) {
      throw new BuiltValueNullFieldError('AuthState', 'picture');
    }
    if (qrCode == null) {
      throw new BuiltValueNullFieldError('AuthState', 'qrCode');
    }
    if (isAuthenticated == null) {
      throw new BuiltValueNullFieldError('AuthState', 'isAuthenticated');
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
        name == other.name &&
        email == other.email &&
        secret == other.secret &&
        picture == other.picture &&
        qrCode == other.qrCode &&
        isAuthenticated == other.isAuthenticated &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), email.hashCode),
                        secret.hashCode),
                    picture.hashCode),
                qrCode.hashCode),
            isAuthenticated.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('name', name)
          ..add('email', email)
          ..add('secret', secret)
          ..add('picture', picture)
          ..add('qrCode', qrCode)
          ..add('isAuthenticated', isAuthenticated)
          ..add('error', error))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _secret;
  String get secret => _$this._secret;
  set secret(String secret) => _$this._secret = secret;

  String _picture;
  String get picture => _$this._picture;
  set picture(String picture) => _$this._picture = picture;

  String _qrCode;
  String get qrCode => _$this._qrCode;
  set qrCode(String qrCode) => _$this._qrCode = qrCode;

  bool _isAuthenticated;
  bool get isAuthenticated => _$this._isAuthenticated;
  set isAuthenticated(bool isAuthenticated) =>
      _$this._isAuthenticated = isAuthenticated;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _secret = _$v.secret;
      _picture = _$v.picture;
      _qrCode = _$v.qrCode;
      _isAuthenticated = _$v.isAuthenticated;
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
        new _$AuthState._(
            name: name,
            email: email,
            secret: secret,
            picture: picture,
            qrCode: qrCode,
            isAuthenticated: isAuthenticated,
            error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
