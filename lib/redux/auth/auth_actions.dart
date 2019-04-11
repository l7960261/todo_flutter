import 'dart:async';

import 'package:todo_flutter/redux/app/app_state.dart';

class LoadStateRequest {
  final Completer completer;
  LoadStateRequest(this.completer);
}

class LoadStateSuccess {
  final AppState state;
  LoadStateSuccess(this.state);
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

class UserLogout {}

class UserLoginRequest {
  final Completer completer;
  final String account;
  final String password;

  UserLoginRequest({this.completer, this.account, this.password});
}
