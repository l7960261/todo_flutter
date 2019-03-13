import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState() {
    return _$AuthState._(account: '', isLogin: false);
  }
  AuthState._();

  String get account;
  bool get isLogin;

  @nullable
  String get error;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
