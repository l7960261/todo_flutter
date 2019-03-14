import 'dart:async';

class IncreaseAction {}

class LoadDataSuccess {
  final Completer completer;
  final dynamic data;
  LoadDataSuccess({this.completer, this.data});
}
