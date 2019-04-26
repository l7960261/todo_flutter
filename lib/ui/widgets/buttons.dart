import 'package:flutter/material.dart';
import 'package:todo_flutter/utils/styles.dart';

enum AppButtonType { PRIMARY, PRIMART_OUTLINE }

class AppButton {
  static Widget buildAppButton(BuildContext context, AppButtonType type,
      String buttonText, List<double> dimens,
      {Function onPressed, bool disabled = false}) {
    switch (type) {
      case AppButtonType.PRIMARY:
        return Expanded(
          child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              height: 55,
              margin: EdgeInsets.fromLTRB(
                  dimens[0], dimens[1], dimens[2], dimens[3]),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
                color: Theme.of(context).primaryColor,
                child: Text(
                  buttonText,
                  style: AppStyles.textStyleButtonPrimary(context),
                ),
                onPressed: () {
                  if (onPressed != null && !disabled) {
                    onPressed();
                  }
                  return;
                },
              )),
        );
      case AppButtonType.PRIMART_OUTLINE:
        return Expanded(
          child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              height: 55,
              margin: EdgeInsets.fromLTRB(
                  dimens[0], dimens[1], dimens[2], dimens[3]),
              child: OutlineButton(
                color: Theme.of(context).backgroundColor,
                textColor: disabled
                    ? Theme.of(context).primaryColorLight
                    : Theme.of(context).primaryColor,
                borderSide: BorderSide(
                    color: disabled
                        ? Theme.of(context).primaryColorLight
                        : Theme.of(context).primaryColor,
                    width: 2.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
                child: Text(
                  buttonText,
                  style: AppStyles.textStyleButtonPrimaryOutline(context),
                ),
                onPressed: () {
                  if (onPressed != null && !disabled) {
                    onPressed();
                  }
                  return;
                },
              )),
        );
      default:
        throw new Exception("Invalid Button Type $type");
    }
  }
}
