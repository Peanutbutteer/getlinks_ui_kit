import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/res/colors.dart';
import 'package:getlinks_ui_kit/string_utils.dart';

class GLPasswordTextField extends StatefulWidget {
  const GLPasswordTextField({
    this.obscureText = false,
    this.enable = true,
    this.hintText = '',
    this.controller,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
    this.nextFocusNode,
    this.keyboardType,
    this.fieldKey,
    this.validator,
    this.labelText,
    this.maxlines = 1,
    this.error,
  });

  final bool obscureText;
  final String hintText;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final ValueChanged<String> onFieldSubmitted;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;
  final TextInputType keyboardType;
  final Key fieldKey;
  final FormFieldValidator<String> validator;
  final bool enable;
  final String labelText;
  final int maxlines;
  final String error;

  @override
  _GLPasswordTextFieldState createState() => _GLPasswordTextFieldState();
}

class _GLPasswordTextFieldState extends State<GLPasswordTextField> {
  bool passwordVisiblity = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: !passwordVisiblity,
      maxLines: widget.maxlines,
      controller: widget.controller,
      textInputAction: widget.textInputAction,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      enabled: widget.enable,
      style: TextStyle(color: GetLinksColors.gunmetal),
      cursorColor: GetLinksColors.gunmetal,
      decoration: InputDecoration(
          errorText: widget.error,
          filled: widget.enable ? false : true,
          fillColor: Color(0x4DBABDC6),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 10,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              passwordVisiblity ? Icons.visibility_off : Icons.visibility,
              color: widget.error ==null? GetLinksColors.silver300: GetLinksColors.carnationColor,
            ),
            onPressed: () {
              setState(() {
                passwordVisiblity = !passwordVisiblity;
              });
            },
          ),
          errorStyle: TextStyle(color: GetLinksColors.carnationColor),
          labelStyle:
              widget.enable ? null : TextStyle(color: GetLinksColors.silver300),
          hintText: StringUtils.capitalize(widget.hintText),
          labelText: widget.labelText != null
              ? StringUtils.capitalize(widget.labelText)
              : null,
          hintStyle: TextStyle(color: GetLinksColors.silver300),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GetLinksColors.silver300),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GetLinksColors.mystic),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GetLinksColors.primary),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GetLinksColors.carnationColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GetLinksColors.carnationColor),
          )),
      validator: widget.validator,
      onFieldSubmitted: (_) {
        if (widget.nextFocusNode != null) {
          widget.focusNode.unfocus();
          FocusScope.of(context).requestFocus(widget.nextFocusNode);
        }
      },
    );
  }
}
