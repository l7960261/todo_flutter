import 'dart:async';

class UserLogout {}

class UserLoginRequest {
  final Completer completer;
  final String account;
  final String password;
  final String url;

  UserLoginRequest({this.completer, this.account, this.password, this.url});
}

class UserLoginSuccess {
  final String name;
  final String email;
  final String picture;
  final String qrCode;
  final String secret;

  UserLoginSuccess(
      {this.name, this.email, this.picture, this.qrCode, this.secret});
}

class UserLoginFailure {
  final Object error;

  UserLoginFailure(this.error);
}