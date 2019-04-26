import 'package:redux/redux.dart';
import 'package:flutter_hades_core/flutter_hades_core.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/wallet/wallet_actions.dart';

List<Middleware<AppState>> createStoreWalletMiddleware() {
  final generateWallet = _createWallet();
  return [TypedMiddleware<AppState, WalletGenerateRequest>(generateWallet)];
}

Middleware<AppState> _createWallet() {
  return (Store<AppState> store, action, NextDispatcher next) async {
    var seed = HadesSeeds.generateSeed();
    next(action);
  };
}
