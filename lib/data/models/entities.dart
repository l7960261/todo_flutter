import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entities.g.dart';

abstract class LoginResponse
    implements Built<LoginResponse, LoginResponseBuilder> {
  factory LoginResponse([void updates(LoginResponseBuilder b)]) =
      _$LoginResponse;

  LoginResponse._();

  LoginResponseData get data;

  static Serializer<LoginResponse> get serializer => _$loginResponseSerializer;
}

abstract class LoginResponseData
    implements Built<LoginResponseData, LoginResponseDataBuilder> {
  factory LoginResponseData([void updates(LoginResponseDataBuilder b)]) =
      _$LoginResponseData;
  LoginResponseData._();

  String get email;
  String get name;
  String get picture;
  String get qr;
  String get secret;

  static Serializer<LoginResponseData> get serializer =>
      _$loginResponseDataSerializer;
}

abstract class DashboardResponse
    implements Built<DashboardResponse, DashboardResponseBuilder> {
  factory DashboardResponse([void updates(DashboardResponseBuilder b)]) =
      _$DashboardResponse;

  DashboardResponse._();

  DashboardEntity get data;

  static Serializer<DashboardResponse> get serializer =>
      _$dashboardResponseSerializer;
}

abstract class DashboardEntity
    implements Built<DashboardEntity, DashboardEntityBuilder> {
  factory DashboardEntity([void updates(DashboardEntityBuilder b)]) =
      _$DashboardEntity;

  DashboardEntity._();

  int get balance;
  BuiltList<OrderEntity> get orders;

  static Serializer<DashboardEntity> get serializer =>
      _$dashboardEntitySerializer;
}

abstract class OrderEntity implements Built<OrderEntity, OrderEntityBuilder> {
  factory OrderEntity([void updates(OrderEntityBuilder b)]) = _$OrderEntity;

  OrderEntity._();

  @BuiltValueField(wireName: '_id')
  String get id;
  String get company;
  String get img;
  String get revenue;
  String get date;

  static Serializer<OrderEntity> get serializer => _$orderEntitySerializer;
}
