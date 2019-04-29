import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_reducer.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_reducer.dart';
import 'package:todo_flutter/redux/system/system_reducer.dart';
import 'package:todo_flutter/redux/wallet/wallet_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is LoadStateSuccess) {
    return action.state.rebuild((b) => b);
  }

  return state.rebuild((b) => b
    ..authState.replace(authStateReducer(state.authState, action))
    ..systemState.replace(systemStateReducer(state.systemState, action))
    ..dashboradState.replace(dashboardStateReducer(state.dashboradState, action))
    ..walletState.replace(walletStateReducer(state.walletState, action)));
}
