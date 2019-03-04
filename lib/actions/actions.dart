class IncreaseAction {}

class CheckLoggedInAction {}

class LogoutSuccessAction {}

class LoginSuccessAction {
  final String account;
  LoginSuccessAction({this.account});
}

class LoadedAction {
  final bool isLogin;
  final String account;
  LoadedAction({this.isLogin, this.account});
}
