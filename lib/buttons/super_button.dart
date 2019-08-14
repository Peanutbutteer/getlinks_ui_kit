import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:getlinks_ui_kit/buttons/button_size.dart';
import 'package:getlinks_ui_kit/res/colors.dart';
import 'package:getlinks_ui_kit/string_utils.dart';

class GLSuperButton extends StatefulWidget {
  const GLSuperButton(
    this.text, {
    @required this.onPressed,
    this.showLoading = false,
    this.size = ButtonSize.normal,
    this.expand = true,
    this.disabledColor = Colors.grey,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final bool showLoading;
  final ButtonSize size;
  final bool expand;
  final Color disabledColor;
  final Icon icon;

  @override
  _GLSuperButtonState createState() => _GLSuperButtonState();
}

class _GLSuperButtonState extends State<GLSuperButton> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    double buttonHeight = widget.size == ButtonSize.small ? 36 : 48;
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          onHover = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          onHover = false;
        });
      },
      onTapCancel: () {
        setState(() {
          onHover = false;
        });
      },
      onTap: widget.showLoading ? null : widget.onPressed,
      child: Container(
        width: widget.expand ? double.infinity : 160,
        constraints: BoxConstraints(
          minHeight: buttonHeight,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(buttonHeight / 2),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      GetLinksColors.primary,
                      GetLinksColors.primaryBlue,
                    ]),
                  ),
                ),
              ),
              if (!widget.showLoading && onHover)
                Positioned.fill(
                  child: Container(
                    color: Color(0x1a141e32),
                  ),
                ),
              if (widget.onPressed == null && !widget.showLoading)
                Positioned.fill(
                  child: Container(
                    color: GetLinksColors.mystic,
                  ),
                ),
              if (!widget.showLoading)
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    StringUtils.capitalize(widget.text.toUpperCase()),
                    maxLines: 1,
                    style: TextStyle(
                      color: widget.onPressed == null
                          ? GetLinksColors.silver300
                          : Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              if (widget.showLoading)
                SpinKitCircle(
                  size: widget.size == ButtonSize.small ? 20 : 25,
                  color: Colors.white,
                )
            ],
          ),
        ),
      ),
    );
  }
}
