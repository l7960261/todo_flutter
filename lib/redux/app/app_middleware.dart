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
  final userLoggedIn = _createUserLoggedIn(authRepository);
  final deleteState = _createDeleteState(authRepository);
  final dataLoaded = _createDataLoaded();

  return [
    TypedMiddleware<AppState, LoadStateRequest>(loadState),
    TypedMiddleware<AppState, UserLogout>(deleteState),
    TypedMiddleware<AppState, UserLoginSuccess>(userLoggedIn),
    TypedMiddleware<AppState, LoadDataSuccess>(dataLoaded)
  ];
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

Middleware<AppState> _createUserLoggedIn(PersistenceRepository authRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    final state = store.state;

    authRepository.saveAuthState(state.authState);
  };
}

Middleware<AppState> _createDeleteState(PersistenceRepository authRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    authRepository.delete();

    next(action);
  };
}

Middleware<AppState> _createDataLoaded() {
  return (Store<AppState> store, action, NextDispatcher next) async {
    print('載入會員資訊完畢');
    final account = action.data;
    store.dispatch(UserLoginSuccess(account));

    action.completer.complete(null);
    next(action);
  };
}
