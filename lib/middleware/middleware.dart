import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';

List<Middleware<AppState>> createMiddleware() {
  return [
    TypedMiddleware<AppState, IncreaseAction>(_increaseMiddleware()),
    TypedMiddleware<AppState, LoginSuccessAction>(_loadUserInfo()),
  ];
}

Middleware<AppState> _increaseMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_increaseMiddleware 開始');
    print('AppState: ${store.state}');

    next(action);

    print('_increaseMiddleware 結束');
    print('AppState: ${store.state}');
  };
}

Middleware<AppState> _loadUserInfo() {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_loadUserInfo 開始');
    print('AppState: ${store.state}');

    next(action);

    print('_loadUserInfo 結束');
    print('AppState: ${store.state}');
  };
}
