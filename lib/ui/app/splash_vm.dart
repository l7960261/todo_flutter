import 'dart:async';
import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/ui/app/splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SplashVM>(
        converter: SplashVM.fromStore,
        builder: (context, viewModel) {
          return SplashView(viewModel: viewModel);
        });
  }
}

class SplashVM {
  SplashVM({@required this.onInit});

  final void Function(void Function(bool isAuthenticated) callback) onInit;

  static SplashVM fromStore(Store<AppState> store) {
    return SplashVM(onInit: (Function(bool isAuthenticated) callback) {
      final Completer<Null> completer = Completer<Null>();
      store.dispatch(LoadStateRequest(completer));
      completer.future
          .then((_) => callback(store.state.authState.isAuthenticated));
    });
  }
}
