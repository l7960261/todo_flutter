import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:todo_flutter/models/app_state.dart';

enum Actions { Increase, LogoutSuccess }

class LoginSuccessAction {
  final String account;
  LoginSuccessAction({this.account});
}

AppState mainReducer(AppState state, dynamic action) {
  if (Actions.Increase == action) {
    state.main.counter += 1;
  }

  if (Actions.LogoutSuccess == action) {
    state.auth.isLogin = false;
    state.auth.account = null;
  }

  if (action is LoginSuccessAction) {
    state.auth.isLogin = true;
    state.auth.account = action.account;
  }

  return state;
}

void main() {
  Store<AppState> store = new Store<AppState>(mainReducer,
      initialState: AppState(main: MainPageState(), auth: AuthState()));
  runApp(ReduxApp(store: store));
}

class ReduxApp extends StatelessWidget {
  final Store<AppState> store;

  ReduxApp({this.store});

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(primarySwatch: Colors.blue),
            routes: {
              '/': (context) {
                return StoreConnector(
                    builder: (BuildContext context, AppState state) {
                  return MyHomePage(
                      title: 'Flutter Demo Home Page',
                      counter: state.main.counter,
                      isLogin: state.auth.isLogin,
                      account: state.auth.account);
                }, converter: (Store<AppState> store) {
                  return store.state;
                });
              },
              '/second': (context) {
                return StoreConnector(
                    builder: (BuildContext context, AppState state) {
                  return SecondPage(
                      title: 'Flutter Demo Second Page',
                      counter: state.main.counter,
                      isLogin: state.auth.isLogin,
                      account: state.auth.account);
                }, converter: (Store<AppState> store) {
                  return store.state;
                });
              }
            }));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title, this.counter, this.isLogin, this.account})
      : super(key: key);

  final String title;
  final int counter;
  final bool isLogin;
  final String account;

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
                        return new RaisedButton(
                          onPressed: logout,
                          child: new Text("您好:$account,点击退出"),
                        );
                      },
                      converter: (Store<AppState> store) {
                        return () => store.dispatch(Actions.LogoutSuccess);
                      })
                  : StoreConnector<AppState, VoidCallback>(
                      key: ValueKey('logout'),
                      builder: (BuildContext context, VoidCallback login) {
                        return new RaisedButton(
                          onPressed: login,
                          child: new Text("登录"),
                        );
                      },
                      converter: (Store<AppState> store) {
                        return () => store.dispatch(
                            new LoginSuccessAction(account: 'xxx account!'));
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
            return () => store.dispatch(Actions.Increase);
          },
        ));
  }
}

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
                        return new RaisedButton(
                          onPressed: logout,
                          child: new Text("您好:$account,点击退出"),
                        );
                      },
                      converter: (Store<AppState> store) {
                        return () => store.dispatch(Actions.LogoutSuccess);
                      })
                  : StoreConnector<AppState, VoidCallback>(
                      key: ValueKey('logout'),
                      builder: (BuildContext context, VoidCallback login) {
                        return new RaisedButton(
                          onPressed: login,
                          child: new Text("登录"),
                        );
                      },
                      converter: (Store<AppState> store) {
                        return () => store.dispatch(
                            new LoginSuccessAction(account: 'xxx account!'));
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
            return () => store.dispatch(Actions.Increase);
          },
        ));
  }
}
