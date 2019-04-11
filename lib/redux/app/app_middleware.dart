import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/data/repositories/persistence_repository.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/redux/system/system_state.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createStorePersistenceMiddleware(
    [PersistenceRepository authRepository = const PersistenceRepository(
        fileStorage:
            const FileStorage('auth_state', getApplicationDocumentsDirectory)),
    PersistenceRepository systemRepository = const PersistenceRepository(
        fileStorage: const FileStorage(
            'system_state', getApplicationDocumentsDirectory))]) {
  final loadState = _createLoadState(authRepository, systemRepository);
  final userLoggedIn = _createUserLoggedIn(authRepository);
  final deleteState = _createDeleteState(authRepository);
  final dataLoaded = _createDataLoaded(systemRepository);

  return [
    TypedMiddleware<AppState, LoadStateRequest>(loadState),
    TypedMiddleware<AppState, UserLogout>(deleteState),
    TypedMiddleware<AppState, UserLoginSuccess>(userLoggedIn),
    TypedMiddleware<AppState, LoadDataSuccess>(dataLoaded)
  ];
}

Middleware<AppState> _createLoadState(PersistenceRepository authRepository,
    PersistenceRepository systemRepository) {
  AuthState authState;
  SystemState systemState;

  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      authState = await authRepository.loadAuthState();
      systemState = await systemRepository.loadSystemState();

      final AppState appState = AppState().rebuild((b) =>
          b..authState.replace(authState)..systemState.replace(systemState));
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

Middleware<AppState> _createDataLoaded(PersistenceRepository systemRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    final dynamic data = action.data;
    store.dispatch(UserLoginSuccess(
        name: data.name,
        email: data.email,
        picture: data.picture,
        qrCode: data.qr,
        secret: data.secret));

    action.completer.complete(null);
    next(action);

    systemRepository.saveSystemState(store.state.systemState);
  };
}
