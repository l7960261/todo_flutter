import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/utils/styles.dart';
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
        drawer: AppDrawer(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height / 5,
              floating: false,
              actions: <Widget>[],
              flexibleSpace: FlexibleSpaceBar(
                  title: Text('Flexible Space Bar'),
                  background: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Theme.of(context).primaryColorLight,
                              Theme.of(context).primaryColor,
                              Theme.of(context).primaryColorDark
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                SizedBox(
                    height: 50.0,
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'G Coins',
                          style: TextStyle(fontSize: AppFontSizes.medium),
                        ))),
                Container(
                    height: MediaQuery.of(context).size.height / 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          height: MediaQuery.of(context).size.height / 10,
                          margin: EdgeInsets.all(8),
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('\$'),
                                Text(
                                  '$counter',
                                  style: TextStyle(
                                      fontSize: AppFontSizes.largestc),
                                )
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                            child: Container(
                          height: MediaQuery.of(context).size.height / 10,
                          margin: EdgeInsets.all(8),
                          child: Card(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              StoreConnector<AppState, VoidCallback>(builder:
                                  (BuildContext context,
                                      VoidCallback callback) {
                                return FloatingActionButton(
                                    mini: true,
                                    onPressed: callback,
                                    child: Icon(Icons.add));
                              }, converter: (Store<AppState> store) {
                                return () {
                                  store.dispatch(IncreaseAction());
                                };
                              })
                            ],
                          )),
                        ))
                      ],
                    )),
                SizedBox(height: 200, child: Center(child: Text('Sized box'))),
                SizedBox(height: 200, child: Center(child: Text('Sized box'))),
                SizedBox(height: 200, child: Center(child: Text('Sized box'))),
              ]),
            )
          ],
        ));
  }
}
