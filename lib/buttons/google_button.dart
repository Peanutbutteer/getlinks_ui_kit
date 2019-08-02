import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:getlinks_ui_kit/res/assets.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({@required this.loading, @required this.onPressed});

  final VoidCallback onPressed;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(accentColor: Colors.white),
      child: ButtonTheme(
        height: 48,
        child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: const Color(0xFF4285F4),
          disabledColor: const Color(0xFF4285F4),
          disabledTextColor: Colors.white,
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
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
                          image: const AssetImage(ImageAssets.GoogleIcon),
                        ),
                ),
                Expanded(
                  child: Text(
                    'Login with Google',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
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
