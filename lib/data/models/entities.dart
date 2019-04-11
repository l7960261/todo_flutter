import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entities.g.dart';

abstract class LoginResponseData
    implements Built<LoginResponseData, LoginResponseDataBuilder> {
  factory LoginResponseData([void updates(LoginResponseDataBuilder b)]) =
      _$LoginResponseData;
  LoginResponseData._();

  String get email;
  String get name;
  String get picture;
  String get qr;

  static Serializer<LoginResponseData> get serializer =>
      _$loginResponseDataSerializer;
}
