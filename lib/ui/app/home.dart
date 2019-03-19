import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/system/system_actions.dart';
import 'package:todo_flutter/routes.dart';
import 'package:todo_flutter/styles.dart';
import 'package:todo_flutter/ui/app/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        builder: (BuildContext context, AppState state) {
      return Home(
          title: AppLocalization.of(context).homeTitle,
          counter: state.homeState.counter,
          account: state.authState.account);
    }, converter: (Store<AppState> store) {
      return store.state;
    });
  }
}

class Home extends StatelessWidget {
  final String title;
  final int counter;
  final String account;

  Home({Key key, this.title, this.counter, this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        drawer: AppDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$counter',
                style: TextStyle(fontSize: AppFontSizes.medium),
              )
            ],
          ),
        ),
        floatingActionButton: StoreConnector<AppState, VoidCallback>(
          builder: (BuildContext context, VoidCallback callback) {
            return FloatingActionButton(
              onPressed: callback,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            );
          },
          converter: (Store<AppState> store) {
            return () {
              store.dispatch(IncreaseAction());
              store.dispatch(ChangeLanguage('zh-Hans'));
            };
          },
        ));
  }
}
