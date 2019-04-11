import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState() {
    return _$AuthState._(
        name: '',
        email: '',
        secret: '',
        picture: '',
        qrCode: '',
        isAuthenticated: false);
  }
  AuthState._();

  String get name;
  String get email;
  String get secret;
  String get picture;
  String get qrCode;
  bool get isAuthenticated;

  @nullable
  String get error;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
