import 'package:json_annotation/json_annotation.dart';

part 'app_state.g.dart';

@JsonSerializable()
class AppState {
  AuthState auth;
  MainPageState main;

  AppState({this.main, this.auth});

  // factory AppState.fromJson(Map<String, dynamic> json) =>
  //     _$AppStateFromJson(json);

  static AppState fromJson(dynamic json) => json == null
      ? AppState(main: MainPageState(), auth: AuthState())
      : _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  @override
  String toString() {
    return 'AppState: {auth:$auth, main:$main}';
  }
}

@JsonSerializable()
class AuthState {
  bool isLogin;
  String account;
  AuthState({this.isLogin: false, this.account});

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);

  Map<String, dynamic> toJson() => _$AuthStateToJson(this);

  @override
  String toString() {
    return '{account:$account, isLogin:$isLogin}';
  }
}

@JsonSerializable()
class MainPageState {
  int counter;
  MainPageState({this.counter: 0});

  factory MainPageState.fromJson(Map<String, dynamic> json) =>
      _$MainPageStateFromJson(json);

  Map<String, dynamic> toJson() => _$MainPageStateToJson(this);

  @override
  String toString() {
    return '{counter: $counter}';
  }
}
