import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createMiddleware(
    [FileStorage storage = const FileStorage('_redux_app_')]) {
  final loadFile = _loadMiddleware(storage);
  final saveFile = _saveMiddleware(storage);

  return [
    TypedMiddleware<AppState, IncreaseAction>(_normalMiddleware()),
    TypedMiddleware<AppState, CheckLoggedInAction>(loadFile),
    TypedMiddleware<AppState, LoginSuccessAction>(saveFile),
    TypedMiddleware<AppState, LogoutSuccessAction>(saveFile),
    TypedMiddleware<AppState, LoadedAction>(saveFile)
  ];
}

Middleware<AppState> _saveMiddleware(FileStorage storage) {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_saveMiddleware 開始');
    print('AppState: ${store.state}');

    next(action);

    storage.write(store.state.auth.toJson());

    print('_saveMiddleware 結束');
    print('AppState: ${store.state}');
  };
}

Middleware<AppState> _loadMiddleware(FileStorage storage) {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_loadMiddleware 開始');
    print('AppState: ${store.state}');

    storage.read().then((json) {
      final state = AuthState.fromJson(json);
      store.dispatch(LoadedAction(
          isLogin: state.isLogin ??= false, account: state.account));
      action.completer.complete(null);
    });

    next(action);

    print('_loadMiddleware 結束');
    print('AppState: ${store.state}');
  };
}

Middleware<AppState> _normalMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_normalMiddleware 開始');
    print('AppState: ${store.state}');

    next(action);

    print('_normalMiddleware 結束');
    print('AppState: ${store.state}');
  };
}
