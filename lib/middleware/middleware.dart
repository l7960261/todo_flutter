import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createMiddleware(
    [FileStorage storage =
        const FileStorage('_redux_app_', getApplicationDocumentsDirectory)]) {
  return [
    TypedMiddleware<AppState, IncreaseAction>(_normalMiddleware()),
  ];
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
