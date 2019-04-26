import 'package:redux/redux.dart';
import 'package:todo_flutter/data/repositories/wallet_repository.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/wallet/wallet_actions.dart';

List<Middleware<AppState>> createStoreWalletMiddleware(
    [WalletRepository walletRepository = const WalletRepository()]) {
  final generateWallet = _createWallet(walletRepository);
  return [TypedMiddleware<AppState, WalletGenerateRequest>(generateWallet)];
}

Middleware<AppState> _createWallet(WalletRepository walletRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);
  };
}
