import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_state.dart';
import 'package:todo_flutter/redux/system/system_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState._(
        authState: AuthState(),
        systemState: SystemState(),
        dashboradState: DashboardState());
  }
  AppState._();

  AuthState get authState;
  SystemState get systemState;
  DashboardState get dashboradState;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
