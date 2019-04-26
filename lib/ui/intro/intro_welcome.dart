import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/wallet/wallet_actions.dart';
import 'package:todo_flutter/ui/widgets/buttons.dart';
import 'package:todo_flutter/utils/dimens.dart';

class IntroWelcomeVM {
  final void Function(BuildContext) onNewWalletPressed;

  IntroWelcomeVM({@required this.onNewWalletPressed});
  static IntroWelcomeVM fromStore(Store<AppState> store) {
    return IntroWelcomeVM(onNewWalletPressed: (BuildContext context) {
      store.dispatch(WalletGenerateRequest());
    });
  }
}

class IntroWelcome extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, IntroWelcomeVM>(
        builder: (BuildContext context, IntroWelcomeVM vm) {
          return Scaffold(
              key: _scaffoldKey,
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                  title: Text(AppLocalization.of(context).splashTitle),
                  centerTitle: true),
              backgroundColor: Theme.of(context).backgroundColor,
              body: LayoutBuilder(
                builder: (context, constraints) => SafeArea(
                    minimum: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.035,
                        top: MediaQuery.of(context).size.height * 0.10),
                    child: Column(
                      children: <Widget>[
                        //A column with "New Wallet" and "Import Wallet" buttons
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                AppButton.buildAppButton(
                                    context,
                                    AppButtonType.PRIMARY,
                                    AppLocalization.of(context).newWallet,
                                    Dimens.BUTTON_TOP_DIMENS,
                                    onPressed: vm.onNewWalletPressed)
                              ],
                            ),
                            Row(children: <Widget>[
                              AppButton.buildAppButton(
                                  context,
                                  AppButtonType.PRIMART_OUTLINE,
                                  AppLocalization.of(context).importWallet,
                                  Dimens.BUTTON_BOTTOM_DIMENS)
                            ])
                          ],
                        )
                      ],
                    )),
              ));
        },
        converter: IntroWelcomeVM.fromStore);
  }
}
