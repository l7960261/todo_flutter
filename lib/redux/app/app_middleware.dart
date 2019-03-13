import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/data/repositories/persistence_repository.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createStorePersistenceMiddleware(
    [PersistenceRepository authRepository = const PersistenceRepository(
        fileStorage: const FileStorage(
            'auth_state', getApplicationDocumentsDirectory))]) {
  final loadState = _createLoadState(authRepository);
  return [
    TypedMiddleware<AppState, LoadStateRequest>(loadState),
    TypedMiddleware<AppState, IncreaseAction>(_normalMiddleware())
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

Middleware<AppState> _createLoadState(PersistenceRepository authRepository) {
  AuthState authState;

  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      authState = await authRepository.loadAuthState();

      final AppState appState =
          AppState().rebuild((b) => b..authState.replace(authState));
      store.dispatch(LoadStateSuccess(appState));
    } catch (error) {
      print(error);
    }

    action.completer.complete(null);

    next(action);
  };
}
