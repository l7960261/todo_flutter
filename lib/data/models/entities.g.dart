// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResponse> _$loginResponseSerializer =
    new _$LoginResponseSerializer();
Serializer<LoginResponseData> _$loginResponseDataSerializer =
    new _$LoginResponseDataSerializer();
Serializer<DashboardResponse> _$dashboardResponseSerializer =
    new _$DashboardResponseSerializer();
Serializer<DashboardEntity> _$dashboardEntitySerializer =
    new _$DashboardEntitySerializer();
Serializer<OrderEntity> _$orderEntitySerializer = new _$OrderEntitySerializer();

class _$LoginResponseSerializer implements StructuredSerializer<LoginResponse> {
  @override
  final Iterable<Type> types = const [LoginResponse, _$LoginResponse];
  @override
  final String wireName = 'LoginResponse';

  @override
  Iterable serialize(Serializers serializers, LoginResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(LoginResponseData)),
    ];

    return result;
  }

  @override
  LoginResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LoginResponseData))
              as LoginResponseData);
          break;
      }
    }

    return result.build();
  }
}

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

class _$DashboardResponseSerializer
    implements StructuredSerializer<DashboardResponse> {
  @override
  final Iterable<Type> types = const [DashboardResponse, _$DashboardResponse];
  @override
  final String wireName = 'DashboardResponse';

  @override
  Iterable serialize(Serializers serializers, DashboardResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DashboardEntity)),
    ];

    return result;
  }

  @override
  DashboardResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DashboardResponseBuilder();

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

class _$DashboardEntitySerializer
    implements StructuredSerializer<DashboardEntity> {
  @override
  final Iterable<Type> types = const [DashboardEntity, _$DashboardEntity];
  @override
  final String wireName = 'DashboardEntity';

  @override
  Iterable serialize(Serializers serializers, DashboardEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'balance',
      serializers.serialize(object.balance, specifiedType: const FullType(int)),
      'orders',
      serializers.serialize(object.orders,
          specifiedType:
              const FullType(BuiltList, const [const FullType(OrderEntity)])),
    ];

    return result;
  }

  @override
  DashboardEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DashboardEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'balance':
          result.balance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orders':
          result.orders.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderEntity)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$OrderEntitySerializer implements StructuredSerializer<OrderEntity> {
  @override
  final Iterable<Type> types = const [OrderEntity, _$OrderEntity];
  @override
  final String wireName = 'OrderEntity';

  @override
  Iterable serialize(Serializers serializers, OrderEntity object,
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
  OrderEntity deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderEntityBuilder();

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

class _$LoginResponse extends LoginResponse {
  @override
  final LoginResponseData data;

  factory _$LoginResponse([void updates(LoginResponseBuilder b)]) =>
      (new LoginResponseBuilder()..update(updates)).build();

  _$LoginResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('LoginResponse', 'data');
    }
  }

  @override
  LoginResponse rebuild(void updates(LoginResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBuilder toBuilder() => new LoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResponse')..add('data', data))
        .toString();
  }
}

class LoginResponseBuilder
    implements Builder<LoginResponse, LoginResponseBuilder> {
  _$LoginResponse _$v;

  LoginResponseDataBuilder _data;
  LoginResponseDataBuilder get data =>
      _$this._data ??= new LoginResponseDataBuilder();
  set data(LoginResponseDataBuilder data) => _$this._data = data;

  LoginResponseBuilder();

  LoginResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginResponse;
  }

  @override
  void update(void updates(LoginResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResponse build() {
    _$LoginResponse _$result;
    try {
      _$result = _$v ?? new _$LoginResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
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

class _$DashboardResponse extends DashboardResponse {
  @override
  final DashboardEntity data;

  factory _$DashboardResponse([void updates(DashboardResponseBuilder b)]) =>
      (new DashboardResponseBuilder()..update(updates)).build();

  _$DashboardResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('DashboardResponse', 'data');
    }
  }

  @override
  DashboardResponse rebuild(void updates(DashboardResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardResponseBuilder toBuilder() =>
      new DashboardResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DashboardResponse')..add('data', data))
        .toString();
  }
}

class DashboardResponseBuilder
    implements Builder<DashboardResponse, DashboardResponseBuilder> {
  _$DashboardResponse _$v;

  DashboardEntityBuilder _data;
  DashboardEntityBuilder get data =>
      _$this._data ??= new DashboardEntityBuilder();
  set data(DashboardEntityBuilder data) => _$this._data = data;

  DashboardResponseBuilder();

  DashboardResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DashboardResponse;
  }

  @override
  void update(void updates(DashboardResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DashboardResponse build() {
    _$DashboardResponse _$result;
    try {
      _$result = _$v ?? new _$DashboardResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DashboardResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DashboardEntity extends DashboardEntity {
  @override
  final int balance;
  @override
  final BuiltList<OrderEntity> orders;

  factory _$DashboardEntity([void updates(DashboardEntityBuilder b)]) =>
      (new DashboardEntityBuilder()..update(updates)).build();

  _$DashboardEntity._({this.balance, this.orders}) : super._() {
    if (balance == null) {
      throw new BuiltValueNullFieldError('DashboardEntity', 'balance');
    }
    if (orders == null) {
      throw new BuiltValueNullFieldError('DashboardEntity', 'orders');
    }
  }

  @override
  DashboardEntity rebuild(void updates(DashboardEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardEntityBuilder toBuilder() =>
      new DashboardEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardEntity &&
        balance == other.balance &&
        orders == other.orders;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, balance.hashCode), orders.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DashboardEntity')
          ..add('balance', balance)
          ..add('orders', orders))
        .toString();
  }
}

class DashboardEntityBuilder
    implements Builder<DashboardEntity, DashboardEntityBuilder> {
  _$DashboardEntity _$v;

  int _balance;
  int get balance => _$this._balance;
  set balance(int balance) => _$this._balance = balance;

  ListBuilder<OrderEntity> _orders;
  ListBuilder<OrderEntity> get orders =>
      _$this._orders ??= new ListBuilder<OrderEntity>();
  set orders(ListBuilder<OrderEntity> orders) => _$this._orders = orders;

  DashboardEntityBuilder();

  DashboardEntityBuilder get _$this {
    if (_$v != null) {
      _balance = _$v.balance;
      _orders = _$v.orders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DashboardEntity;
  }

  @override
  void update(void updates(DashboardEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DashboardEntity build() {
    _$DashboardEntity _$result;
    try {
      _$result = _$v ??
          new _$DashboardEntity._(balance: balance, orders: orders.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orders';
        orders.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DashboardEntity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OrderEntity extends OrderEntity {
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

  factory _$OrderEntity([void updates(OrderEntityBuilder b)]) =>
      (new OrderEntityBuilder()..update(updates)).build();

  _$OrderEntity._({this.id, this.company, this.img, this.revenue, this.date})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('OrderEntity', 'id');
    }
    if (company == null) {
      throw new BuiltValueNullFieldError('OrderEntity', 'company');
    }
    if (img == null) {
      throw new BuiltValueNullFieldError('OrderEntity', 'img');
    }
    if (revenue == null) {
      throw new BuiltValueNullFieldError('OrderEntity', 'revenue');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('OrderEntity', 'date');
    }
  }

  @override
  OrderEntity rebuild(void updates(OrderEntityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderEntityBuilder toBuilder() => new OrderEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderEntity &&
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
    return (newBuiltValueToStringHelper('OrderEntity')
          ..add('id', id)
          ..add('company', company)
          ..add('img', img)
          ..add('revenue', revenue)
          ..add('date', date))
        .toString();
  }
}

class OrderEntityBuilder implements Builder<OrderEntity, OrderEntityBuilder> {
  _$OrderEntity _$v;

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

  OrderEntityBuilder();

  OrderEntityBuilder get _$this {
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
  void replace(OrderEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrderEntity;
  }

  @override
  void update(void updates(OrderEntityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderEntity build() {
    final _$result = _$v ??
        new _$OrderEntity._(
            id: id, company: company, img: img, revenue: revenue, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
