import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/data/models/models.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_state.dart';
import 'package:todo_flutter/utils/styles.dart';
import 'package:todo_flutter/ui/app/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DashboardState>(
        builder: (BuildContext context, DashboardState state) {
      return Home(
        title: AppLocalization.of(context).homeTitle,
        data: state.data?.toList(),
      );
    }, converter: (Store<AppState> store) {
      return store.state.dashboradState;
    });
  }
}

class Home extends StatelessWidget {
  final String title;
  final List<OrderResponseData> data;

  Home({Key key, this.title, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    color: Theme.of(context).backgroundColor,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Theme.of(context).primaryColor,
                            Theme.of(context).primaryColorLight
                          ],
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: Card(
                      elevation: 3,
                      color: Theme.of(context).cardColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height / 6,
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Total Assets',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('125,093',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .primaryColorDark,
                                          fontWeight: FontWeight.w800,
                                          fontSize: AppFontSizes.largestc)),
                                  FloatingActionButton(
                                      onPressed: () {},
                                      mini: true,
                                      child: Icon(Icons.description))
                                ]),
                            Text('+14,607',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppFontSizes.medium)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ]..addAll(generatePointCards(context, data)),
          ),
        ));
  }

  List<Widget> generatePointCards(
      BuildContext context, List<OrderResponseData> orders) {
    if (orders == null) {
      return [];
    }

    return orders.map((order) {
      return Container(
          decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: Text(order.company), flex: 1),
              Expanded(
                  child: Card(
                    elevation: 1,
                    color: Theme.of(context).cardColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CircleAvatar(
                                radius: MediaQuery.of(context).size.width / 12,
                                child: Image.network(
                                  order.img,
                                )),
                            Text(order.revenue,
                                style: TextStyle(
                                    color: order.revenue.startsWith('+')
                                        ? Theme.of(context).accentColor
                                        : Theme.of(context).errorColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppFontSizes.medium)),
                          ],
                        )),
                  ),
                  flex: 5)
            ],
          ));
    }).toList();
  }
}
