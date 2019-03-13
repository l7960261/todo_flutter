import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/redux/app/home_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState._(authState: AuthState(), homeState: HomeState());
  }
  AppState._();

  AuthState get authState;
  HomeState get homeState;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
