import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';

List<Middleware<AppState>> createStoreAuthMiddleware() {
  final log = _logMiddleware();

  return [
    TypedMiddleware<AppState, UserLoginSuccess>(log),
    TypedMiddleware<AppState, UserLogout>(log),
  ];
}

Middleware<AppState> _logMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_logMiddleware 開始');
    print('AppState: ${store.state}');

    next(action);

    print('_logMiddleware 結束');
    print('AppState: ${store.state}');
  };
}
