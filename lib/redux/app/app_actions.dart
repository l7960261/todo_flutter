import 'dart:async';
import 'package:todo_flutter/redux/app/app_state.dart';

class LoadStateRequest {
  final Completer completer;
  LoadStateRequest(this.completer);
}

class LoadDataSuccess {
  final Completer completer;
  final dynamic data;
  LoadDataSuccess({this.completer, this.data});
}

class LoadStateSuccess {
  final AppState state;
  LoadStateSuccess(this.state);
}

class PersistData {}
