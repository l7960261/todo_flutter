import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/routes.dart';
import 'package:todo_flutter/styles.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final accountName = store.state.authState.account;
    final accountEmail = '$accountName@xxx.com';

    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text(accountName),
              accountEmail: Text(accountEmail),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')),
              otherAccountsPictures: <Widget>[
                Container(
                    child: Image.network(
                        'https://is5-ssl.mzstatic.com/image/thumb/Purple117/v4/1a/2f/3e/1a2f3e59-4ad1-13f0-8d82-5753eb25cba3/mzl.wofpkenf.jpg/246x0w.jpg'))
              ]),
          ListTile(
            leading: Text(AppLocalization.of(context).peferences,
                style: TextStyle(fontSize: AppFontSizes.small)),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.language)),
            title: Text(AppLocalization.of(context).language),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.format_paint)),
            title: Text(AppLocalization.of(context).theme),
          ),
          ListTile(
            leading: Text(AppLocalization.of(context).manage,
                style: TextStyle(fontSize: AppFontSizes.small)),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.exit_to_app)),
            title: Text(AppLocalization.of(context).logout),
            onTap: () {
              store.dispatch(UserLogout());
              Navigator.pushReplacementNamed(context, AppRoutes.login);
            },
          )
        ],
      ),
    );
  }
}