import 'package:redux/redux.dart';
import 'package:todo_flutter/data/repositories/dashboard_repository.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_actions.dart';

List<Middleware<AppState>> createStoreDashboardMiddleware([
  DashboardRepository repository = const DashboardRepository(),
]) {
  final loadDashboard = _createLoadDashboard(repository);

  return [TypedMiddleware<AppState, LoadDashboard>(loadDashboard)];
}

Middleware<AppState> _createLoadDashboard(DashboardRepository repository) {
  return (Store<AppState> store, dynamic action, NextDispatcher next) {
    repository.loadItem().then((data) {
      store.dispatch(LoadDashboardSuccess(data));
      if (action.completer != null) {
        action.completer.complete(null);
      }
    }).catchError((Object error) {
      print(error);
      if (action.completer != null) {
        action.completer.complete(null);
      }
    });
    next(action);
  };
}
