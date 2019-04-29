import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_actions.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_state.dart';

final dashboardStateReducer = combineReducers<DashboardState>(
    [TypedReducer<DashboardState, LoadDashboardSuccess>(_setLoaderDashboards)]);

DashboardState _setLoaderDashboards(
    DashboardState dashboardState, LoadDashboardSuccess action) {
  return dashboardState.rebuild((b) => b..data.replace(action.data));
}
