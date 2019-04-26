import 'package:redux/redux.dart';

import 'package:todo_flutter/redux/wallet/wallet_actions.dart';
import 'package:todo_flutter/redux/wallet/wallet_state.dart';

final Reducer<WalletState> walletStateReducer = combineReducers<WalletState>([
  TypedReducer<WalletState, WalletGenerateRequest>(walletGenerateStartReducer),
  TypedReducer<WalletState, WalletGenerateDone>(walletGenerateDoneReducer)
]);

WalletState walletGenerateStartReducer(
        WalletState walletState, WalletGenerateRequest action) =>
    walletState.rebuild((b) => b..isLoaded = false);

WalletState walletGenerateDoneReducer(
        WalletState walletState, WalletGenerateDone action) =>
    walletState.rebuild((b) => b
      ..isLoaded = true
      ..address = action.address);
