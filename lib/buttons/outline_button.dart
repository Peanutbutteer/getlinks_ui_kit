import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:getlinks_ui_kit/res/colors.dart';
import 'package:getlinks_ui_kit/string_utils.dart';

import 'button_size.dart';

class GLOutlineButton extends StatelessWidget {
  const GLOutlineButton(
    this.text, {
    @required this.onPressed,
    this.loading = false,
    this.size = ButtonSize.normal,
    this.expand = true,
    this.disabledColor = Colors.grey,
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
    return ButtonTheme(
      minWidth: expand ? double.infinity : 64,
      height: buttonHeight,
      child: icon == null || loading
          ? OutlineButton(
              highlightedBorderColor: GetLinksColors.primary,
              textColor: GetLinksColors.primary,
              borderSide: BorderSide(color: GetLinksColors.primary),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: GetLinksColors.primary,
              disabledTextColor: GetLinksColors.silver300,
              disabledBorderColor: loading
                  ? GetLinksColors.primary
                  : disabledColor ?? GetLinksColors.mystic,
              child: loading
                  ? Container(
                      height: loadingIconSize,
                      width: loadingIconSize,
                      child: SpinKitCircle(
                        size: loadingIconSize,
                        color: GetLinksColors.primary,
                      ),
                    )
                  : Text(StringUtils.capitalize(text)),
              onPressed: loading ? null : onPressed,
            )
          : OutlineButton.icon(
              highlightedBorderColor: GetLinksColors.primary,
              icon: icon,
              textColor: GetLinksColors.primary,
              borderSide: BorderSide(color: GetLinksColors.primary),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: GetLinksColors.primary,
              disabledBorderColor: loading
                  ? GetLinksColors.primary
                  : disabledColor ?? GetLinksColors.mystic,
              disabledTextColor: GetLinksColors.silver300,
              label: loading
                  ? Container(
                      height: loadingIconSize,
                      width: loadingIconSize,
                      child: SpinKitCircle(
                        size: loadingIconSize,
                        color: GetLinksColors.primary,
                      ),
                    )
                  : Text(StringUtils.capitalize(text)),
              onPressed: loading ? null : onPressed,
            ),
    );
  }
}