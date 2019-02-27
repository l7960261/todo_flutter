import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction asyncIncrease = (Store store) async {
  Future.delayed(Duration(seconds: 1), () {
  });

  store.dispatch(IncreaseAction());
};

class IncreaseAction {}

class LogoutSuccessAction {}

class LoginSuccessAction {
  final String account;
  LoginSuccessAction({this.account});
}
