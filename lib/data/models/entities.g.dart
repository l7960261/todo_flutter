// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResponseData> _$loginResponseDataSerializer =
    new _$LoginResponseDataSerializer();
Serializer<OrderResponseData> _$orderResponseDataSerializer =
    new _$OrderResponseDataSerializer();

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

class _$OrderResponseDataSerializer
    implements StructuredSerializer<OrderResponseData> {
  @override
  final Iterable<Type> types = const [OrderResponseData, _$OrderResponseData];
  @override
  final String wireName = 'OrderResponseData';

  @override
  Iterable serialize(Serializers serializers, OrderResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'company',
      serializers.serialize(object.company,
          specifiedType: const FullType(String)),
      'img',
      serializers.serialize(object.img, specifiedType: const FullType(String)),
      'revenue',
      serializers.serialize(object.revenue,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  OrderResponseData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
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

class _$OrderResponseData extends OrderResponseData {
  @override
  final String id;
  @override
  final String company;
  @override
  final String img;
  @override
  final String revenue;
  @override
  final String date;

  factory _$OrderResponseData([void updates(OrderResponseDataBuilder b)]) =>
      (new OrderResponseDataBuilder()..update(updates)).build();

  _$OrderResponseData._(
      {this.id, this.company, this.img, this.revenue, this.date})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('OrderResponseData', 'id');
    }
    if (company == null) {
      throw new BuiltValueNullFieldError('OrderResponseData', 'company');
    }
    if (img == null) {
      throw new BuiltValueNullFieldError('OrderResponseData', 'img');
    }
    if (revenue == null) {
      throw new BuiltValueNullFieldError('OrderResponseData', 'revenue');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('OrderResponseData', 'date');
    }
  }

  @override
  OrderResponseData rebuild(void updates(OrderResponseDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderResponseDataBuilder toBuilder() =>
      new OrderResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderResponseData &&
        id == other.id &&
        company == other.company &&
        img == other.img &&
        revenue == other.revenue &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), company.hashCode), img.hashCode),
            revenue.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderResponseData')
          ..add('id', id)
          ..add('company', company)
          ..add('img', img)
          ..add('revenue', revenue)
          ..add('date', date))
        .toString();
  }
}

class OrderResponseDataBuilder
    implements Builder<OrderResponseData, OrderResponseDataBuilder> {
  _$OrderResponseData _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _company;
  String get company => _$this._company;
  set company(String company) => _$this._company = company;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _revenue;
  String get revenue => _$this._revenue;
  set revenue(String revenue) => _$this._revenue = revenue;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  OrderResponseDataBuilder();

  OrderResponseDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _company = _$v.company;
      _img = _$v.img;
      _revenue = _$v.revenue;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderResponseData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderResponseData;
  }

  @override
  void update(void updates(OrderResponseDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderResponseData build() {
    final _$result = _$v ??
        new _$OrderResponseData._(
            id: id, company: company, img: img, revenue: revenue, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
