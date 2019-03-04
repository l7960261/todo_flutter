import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createMiddleware(
    [FileStorage storage = const FileStorage('_redux_app_')]) {
  final loadFile = _loadMiddleware(storage);
  final saveFile = _increaseMiddleware(storage);

  return [
    TypedMiddleware<AppState, IncreaseAction>(saveFile),
    TypedMiddleware<AppState, LoginSuccessAction>(_loadUserInfo()),
    TypedMiddleware<AppState, LoadAction>(loadFile),
    TypedMiddleware<AppState, LoadedAction>(saveFile)
  ];
}

Middleware<AppState> _increaseMiddleware(FileStorage storage) {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_increaseMiddleware 開始');
    print('AppState: ${store.state}');

    next(action);

    print('_increaseMiddleware 結束');
    print('AppState: ${store.state}');
  };
}

Middleware<AppState> _loadMiddleware(FileStorage storage) {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_loadMiddleware 開始');
    print('AppState: ${store.state}');

    storage.load().then((json) {
      print('storage load then');
      print(json);
      var demo = AuthState.fromJson(json);
      print(demo);
    });

    next(action);

    print('_loadMiddleware 結束');
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
