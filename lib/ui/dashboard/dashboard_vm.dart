import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_state.dart';
import 'package:todo_flutter/redux/wallet/wallet_state.dart';

class DashboardVM {
  DashboardVM({@required this.dashboardState, @required this.walletState});

  static DashboardVM fromStore(Store<AppState> store) {
    final state = store.state;

    return DashboardVM(
        dashboardState: state.dashboradState, walletState: state.walletState);
  }

  final DashboardState dashboardState;
  final WalletState walletState;
}
