import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:getlinks_ui_kit/res/colors.dart';
import 'package:getlinks_ui_kit/string_utils.dart';

import 'button_size.dart';

class GLButton extends StatelessWidget {
  const GLButton(
    this.text, {
    @required this.onPressed,
    this.loading = false,
    this.size = ButtonSize.normal,
    this.expand = true,
    this.disabledColor = GetLinksColors.mystic,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final bool loading;
  final ButtonSize size;
  final bool expand;
  final Color disabledColor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    double buttonHeight = 36;
    switch (size) {
      case ButtonSize.small:
        buttonHeight = 36;
        break;
      default:
        buttonHeight = 48;
        break;
    }
    double loadingIconSize = 25;
    if (size == ButtonSize.small) {
      loadingIconSize = 20;
    }
    return Container(
      height: buttonHeight,
      child: ButtonTheme(
        minWidth: expand ? double.infinity : 64,
        height: buttonHeight,
        child: icon == null || loading
            ? FlatButton(
                disabledColor: loading
                    ? GetLinksColors.primary
                    : disabledColor ?? GetLinksColors.mystic,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: GetLinksColors.primary,
                textColor: Colors.white,
                disabledTextColor: GetLinksColors.silver300,
                child: loading
                    ? Container(
                        height: loadingIconSize,
                        width: loadingIconSize,
                        child: SpinKitCircle(
                          size: loadingIconSize,
                          color: Colors.white,
                        ),
                      )
                    : Text(StringUtils.capitalize(text)),
                onPressed: loading ? null : onPressed,
              )
            : FlatButton.icon(
                disabledColor: disabledColor ?? GetLinksColors.mystic,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: GetLinksColors.primary,
                textColor: Colors.white,
                disabledTextColor: GetLinksColors.silver300,
                icon: icon,
                label: Text(StringUtils.capitalize(text)),
                onPressed: onPressed,
              ),
      ),
    );
  }
}