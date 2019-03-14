import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/auth/login_vm.dart';

class LoginView extends StatefulWidget {
  final LoginVM viewModel;

  LoginView({Key key, @required this.viewModel}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> _loginKey = GlobalKey<FormState>();

  String userName;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _loginKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: '請輸入用戶名'),
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: '請輸入密碼'),
                      obscureText: true,
                      validator: (value) {
                        return value.length < 6 ? '密碼長度不夠 6 位數' : null;
                      },
                      onSaved: (value) {
                        password = value;
                      },
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          var loginForm = _loginKey.currentState;

                          if (!loginForm.validate()) {
                            return;
                          }

                          loginForm.save();
                          print('userName: ' +
                              userName +
                              ' password: ' +
                              password);

                          widget.viewModel.onLoginPressed(context, userName, password);
                        },
                        child: Text('登入', style: TextStyle(fontSize: 18.0)),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
