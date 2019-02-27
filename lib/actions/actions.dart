import 'package:redux/redux.dart';

class IncreaseAction {}

class LogoutSuccessAction {}

class LoginSuccessAction {
  final String account;
  LoginSuccessAction({this.account});
}
