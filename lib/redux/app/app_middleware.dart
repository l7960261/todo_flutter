import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/data/repositories/persistence_repository.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_state.dart';
import 'package:todo_flutter/redux/system/system_state.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createStorePersistenceMiddleware(
    [PersistenceRepository authRepository = const PersistenceRepository(
        fileStorage:
            const FileStorage('auth_state', getApplicationDocumentsDirectory)),
    PersistenceRepository systemRepository = const PersistenceRepository(
        fileStorage: const FileStorage(
            'system_state', getApplicationDocumentsDirectory)),
    PersistenceRepository dashboardRepository = const PersistenceRepository(
        fileStorage: const FileStorage(
            'dashboard_state', getApplicationDocumentsDirectory))]) {
  final loadState =
      _createLoadState(authRepository, systemRepository, dashboardRepository);
  final userLoggedIn = _createUserLoggedIn(authRepository, systemRepository);
  final deleteState =
      _createDeleteState(authRepository, systemRepository, dashboardRepository);
  final dataLoaded = _createDataLoaded();
  final persistData = _createPersistData(dashboardRepository);

  return [
    TypedMiddleware<AppState, LoadStateRequest>(loadState),
    TypedMiddleware<AppState, UserLogout>(deleteState),
    TypedMiddleware<AppState, UserLoginSuccess>(userLoggedIn),
    TypedMiddleware<AppState, LoadDataSuccess>(dataLoaded),
    TypedMiddleware<AppState, PersistData>(persistData)
  ];
}

Middleware<AppState> _createLoadState(
    PersistenceRepository authRepository,
    PersistenceRepository systemRepository,
    PersistenceRepository dashboardRepository) {
  AuthState authState;
  SystemState systemState;
  DashboardState dashboardState;

  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      authState = await authRepository.loadAuthState();
      systemState = await systemRepository.loadSystemState();
      dashboardState = await dashboardRepository.loadDashboardState();

      final AppState appState = AppState().rebuild((b) => b
        ..authState.replace(authState)
        ..systemState.replace(systemState)
        ..dashboradState.replace(dashboardState));

      store.dispatch(LoadStateSuccess(appState));
    } catch (error) {
      print(error);
    }

    action.completer.complete(null);

    next(action);
  };
}

Middleware<AppState> _createUserLoggedIn(PersistenceRepository authRepository,
    PersistenceRepository systemRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    final state = store.state;

    authRepository.saveAuthState(state.authState);
    systemRepository.saveSystemState(state.systemState);
  };
}

Middleware<AppState> _createDataLoaded() {
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
  };
}

Middleware<AppState> _createPersistData(
    PersistenceRepository dashboardRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    final AppState state = store.state;
    dashboardRepository.saveDashboardState(state.dashboradState);
  };
}

Middleware<AppState> _createDeleteState(
    PersistenceRepository authRepository,
    PersistenceRepository systemRepository,
    PersistenceRepository dashboardRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    authRepository.delete();
    systemRepository.delete();
    dashboardRepository.delete();

    next(action);
  };
}
