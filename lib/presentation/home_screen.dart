import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/routes.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  final int counter;
  final String account;

  HomeScreen({Key key, this.title, this.counter, this.account})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.display1,
              ),
              StoreConnector(
                  builder: (BuildContext context, VoidCallback logout) {
                return RaisedButton(
                  color: Colors.redAccent,
                  onPressed: logout,
                  child: Text("您好: $account, 点击退出"),
                );
              }, converter: (Store<AppState> store) {
                return () {
                  store.dispatch(LogoutSuccessAction());
                  Navigator.pushReplacementNamed(context, AppRoutes.login);
                };
              })
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
            return () => store.dispatch(IncreaseAction());
          },
        ));
  }
}
