// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResponseData> _$loginResponseDataSerializer =
    new _$LoginResponseDataSerializer();

class _$LoginResponseDataSerializer
    implements StructuredSerializer<LoginResponseData> {
  @override
  final Iterable<Type> types = const [LoginResponseData, _$LoginResponseData];
  @override
  final String wireName = 'LoginResponseData';

  @override
  Iterable serialize(Serializers serializers, LoginResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'picture',
      serializers.serialize(object.picture,
          specifiedType: const FullType(String)),
      'qr',
      serializers.serialize(object.qr, specifiedType: const FullType(String)),
      'secret',
      serializers.serialize(object.secret,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginResponseData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'qr':
          result.qr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secret':
          result.secret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginResponseData extends LoginResponseData {
  @override
  final String email;
  @override
  final String name;
  @override
  final String picture;
  @override
  final String qr;
  @override
  final String secret;

  factory _$LoginResponseData([void updates(LoginResponseDataBuilder b)]) =>
      (new LoginResponseDataBuilder()..update(updates)).build();

  _$LoginResponseData._(
      {this.email, this.name, this.picture, this.qr, this.secret})
      : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('LoginResponseData', 'email');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('LoginResponseData', 'name');
    }
    if (picture == null) {
      throw new BuiltValueNullFieldError('LoginResponseData', 'picture');
    }
    if (qr == null) {
      throw new BuiltValueNullFieldError('LoginResponseData', 'qr');
    }
    if (secret == null) {
      throw new BuiltValueNullFieldError('LoginResponseData', 'secret');
    }
  }

  @override
  LoginResponseData rebuild(void updates(LoginResponseDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseDataBuilder toBuilder() =>
      new LoginResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponseData &&
        email == other.email &&
        name == other.name &&
        picture == other.picture &&
        qr == other.qr &&
        secret == other.secret;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, email.hashCode), name.hashCode), picture.hashCode),
            qr.hashCode),
        secret.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResponseData')
          ..add('email', email)
          ..add('name', name)
          ..add('picture', picture)
          ..add('qr', qr)
          ..add('secret', secret))
        .toString();
  }
}

class LoginResponseDataBuilder
    implements Builder<LoginResponseData, LoginResponseDataBuilder> {
  _$LoginResponseData _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _picture;
  String get picture => _$this._picture;
  set picture(String picture) => _$this._picture = picture;

  String _qr;
  String get qr => _$this._qr;
  set qr(String qr) => _$this._qr = qr;

  String _secret;
  String get secret => _$this._secret;
  set secret(String secret) => _$this._secret = secret;

  LoginResponseDataBuilder();

  LoginResponseDataBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _name = _$v.name;
      _picture = _$v.picture;
      _qr = _$v.qr;
      _secret = _$v.secret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponseData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginResponseData;
  }

  @override
  void update(void updates(LoginResponseDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResponseData build() {
    final _$result = _$v ??
        new _$LoginResponseData._(
            email: email, name: name, picture: picture, qr: qr, secret: secret);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
