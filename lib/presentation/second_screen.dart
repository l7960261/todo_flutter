import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';

class SecondPage extends StatelessWidget {
  final String title;
  final int counter;
  final bool isLogin;
  final String account;

  SecondPage({Key key, this.title, this.counter, this.isLogin, this.account})
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
              isLogin
                  ? StoreConnector(
                      key: ValueKey('login'),
                      builder: (BuildContext context, VoidCallback logout) {
                        return RaisedButton(
                          onPressed: logout,
                          child: Text("您好:$account,点击退出"),
                        );
                      },
                      converter: (Store<AppState> store) {
                        return () => store.dispatch(LogoutSuccessAction());
                      })
                  : StoreConnector<AppState, VoidCallback>(
                      key: ValueKey('logout'),
                      builder: (BuildContext context, VoidCallback login) {
                        return RaisedButton(
                          onPressed: login,
                          child: Text("登录"),
                        );
                      },
                      converter: (Store<AppState> store) {
                        return () => store.dispatch(
                            LoginSuccessAction(account: 'xxx account!'));
                      }),
              RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go back home page'))
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
