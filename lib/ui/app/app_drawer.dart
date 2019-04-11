import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/data/models/models.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/system/system_actions.dart';
import 'package:todo_flutter/routes.dart';
import 'package:todo_flutter/utils/styles.dart';
import 'package:todo_flutter/utils/themes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final authState = store.state.authState;
    final accountName = authState.name;
    final accountEmail = authState.email;
    final picture = authState.picture;
    final qrCode = authState.qrCode;
    final langMap = store.state.systemState.languageMap.toList();
    final languageSelectedCallback = (String languageCode) {
      store.dispatch(ChangeLanguage(languageCode));
    };
    final themeSelectedCallback = (String themeKey) {
      store.dispatch(ChangeTheme(themeKey));
    };

    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text(accountName),
              accountEmail: Text(accountEmail),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(picture)),
              otherAccountsPictures: <Widget>[
                Container(child: Image.network(qrCode, color: Colors.white))
              ]),
          ListTile(
              leading: Text(
            AppLocalization.of(context).peferences,
            style: TextStyle(fontSize: AppFontSizes.small),
          )),
          LanguageTile(langMap: langMap, callback: languageSelectedCallback),
          ThemeTile(callback: themeSelectedCallback),
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

class LanguageTile extends StatefulWidget {
  final List<LanguageEntity> langMap;
  final void Function(String languageCode) callback;
  LanguageTile({Key key, this.langMap, this.callback}) : super(key: key);

  @override
  _LanguageTileState createState() => _LanguageTileState();
}

class _LanguageTileState extends State<LanguageTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.language)),
      title: Text(AppLocalization.of(context).language),
      onTap: openSimpleDialog,
    );
  }

  Future<Null> openSimpleDialog() async {
    final List<SimpleDialogOption> languageOptions = widget.langMap
        .map((lang) => SimpleDialogOption(
            child: Text(lang.displayName),
            onPressed: () {
              Navigator.pop(context, lang.languageCode);
            }))
        .toList();

    final selection = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text(AppLocalization.of(context).chooseALanguage),
            children: languageOptions,
          );
        });

    if (selection != null) {
      widget.callback(selection);
    }
  }
}

class ThemeTile extends StatefulWidget {
  final void Function(String themeKey) callback;
  ThemeTile({Key key, this.callback}) : super(key: key);
  @override
  _ThemeTileState createState() => _ThemeTileState();
}

class _ThemeTileState extends State<ThemeTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.format_paint)),
      title: Text(AppLocalization.of(context).theme),
      onTap: openSimpleDialog,
    );
  }

  Future<Null> openSimpleDialog() async {
    final List<SimpleDialogOption> themeOptions = AppThemes.getList(context)
        .map((theme) => SimpleDialogOption(
            child: Text(theme.text),
            onPressed: () {
              Navigator.pop(context, theme.key);
            }))
        .toList();

    final selection = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text(AppLocalization.of(context).chooseATheme),
            children: themeOptions,
          );
        });

    if (selection != null) {
      widget.callback(selection);
    }
  }
}
