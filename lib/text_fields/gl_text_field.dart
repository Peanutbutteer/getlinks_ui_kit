import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/res/colors.dart';
import 'package:getlinks_ui_kit/string_utils.dart';

class GLTextField extends StatelessWidget {
  const GLTextField({
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
    this.isSucess = false,
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
  final bool isSucess;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: fieldKey,
      obscureText: obscureText,
      maxLines: maxlines,
      controller: controller,
      textInputAction: textInputAction,
      focusNode: focusNode,
      keyboardType: keyboardType,
      enabled: enable,
      style: TextStyle(color: GetLinksColors.gunmetal),
      cursorColor: GetLinksColors.gunmetal,
      decoration: InputDecoration(
        errorText: error,
        filled: enable ? false : true,
        fillColor: Color(0x4DBABDC6),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        errorStyle: TextStyle(color: GetLinksColors.carnationColor),
        labelStyle: enable ? isSucess ? TextStyle(color: GetLinksColors.primary) : null : TextStyle(color: GetLinksColors.silver300),
        hintText: StringUtils.capitalize(hintText),
        labelText: labelText != null ? StringUtils.capitalize(labelText) : null,
        hintStyle: TextStyle(color: GetLinksColors.silver300),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color:
                  isSucess ? GetLinksColors.primary : GetLinksColors.mystic),
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
        ),
      ),
      validator: validator,
      onFieldSubmitted: (_) {
        if (nextFocusNode != null) {
          focusNode.unfocus();
          FocusScope.of(context).requestFocus(nextFocusNode);
        }
      },
    );
  }
}
