import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('葉大雄'),
              accountEmail: Text('yeahDaShow@cc.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')),
              otherAccountsPictures: <Widget>[
                Container(
                    child: Image.network(
                        'https://is5-ssl.mzstatic.com/image/thumb/Purple117/v4/1a/2f/3e/1a2f3e59-4ad1-13f0-8d82-5753eb25cba3/mzl.wofpkenf.jpg/246x0w.jpg'))
              ]),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.translate)),
            title: Text('Translate'),
          )
        ],
      ),
    );
  }
}
