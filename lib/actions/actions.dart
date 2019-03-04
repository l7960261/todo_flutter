class IncreaseAction {}

class LogoutSuccessAction {}

class LoginSuccessAction {
  final String account;
  LoginSuccessAction({this.account});
}

class LoadAction {}

class LoadedAction {
  final bool isLogin;
  LoadedAction({this.isLogin});
}
