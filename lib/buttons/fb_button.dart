import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:getlinks_ui_kit/res/assets.dart';

class FbButton extends StatelessWidget {
  const FbButton({
    @required this.loading,
    @required this.onPressed,
    this.label,
  });

  final VoidCallback onPressed;
  final bool loading;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(accentColor: Colors.white),
      child: ButtonTheme(
        height: 48,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          disabledColor: const Color(0xFF3b5998),
          disabledTextColor: Colors.white,
          color: const Color(0xFF3b5998),
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 24,
                  width: 24,
                  child: loading
                      ? SpinKitCircle(
                          size: 24,
                          color: Colors.white,
                        )
                      : Image(
                          image: const AssetImage(ImageAssets.FbWhiteIcon),
                        ),
                ),
                Expanded(
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          onPressed: loading ? null : onPressed,
        ),
      ),
    );
  }
}
