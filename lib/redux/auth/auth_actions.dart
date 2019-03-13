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
  final String account;
  UserLoginSuccess(this.account);
}

class UserLogout {}
