class AuthState {
  bool isLogin;
  String account;
  AuthState({this.isLogin: false, this.account});
}

class MainPageState {
  int counter;
  MainPageState({this.counter: 0});
}

class AppState {
  AuthState auth;
  MainPageState main;

  AppState({this.main, this.auth});
}
