import 'package:json_annotation/json_annotation.dart';

part 'app_state.g.dart';

@JsonSerializable()
class AppState {
  AuthState auth;
  HomePageState home;

  AppState({this.home, this.auth});

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  @override
  String toString() {
    return 'AppState: {auth:$auth, main:$home}';
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
class HomePageState {
  int counter;
  HomePageState({this.counter: 0});

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);

  Map<String, dynamic> toJson() => _$HomePageStateToJson(this);

  @override
  String toString() {
    return '{counter: $counter}';
  }
}
