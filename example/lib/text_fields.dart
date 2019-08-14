import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/text_fields/gl_password_text_field.dart';
import 'package:getlinks_ui_kit/text_fields/text_fields.dart';

class TextFields extends StatefulWidget {
  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: true,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GLTextField(
                hintText: 'hint',
              ),
              SizedBox(
                height: 10,
              ),
              GLTextField(
                isSucess: true,
                labelText: 'label',
                hintText: 'hint',
              ),
              SizedBox(
                height: 10,
              ),
              GLTextField(
                hintText: 'hint',
                labelText: 'label',
                enable: false,
              ),
              SizedBox(
                height: 10,
              ),
              GLTextField(
                hintText: 'hint',
                labelText: 'hint',
                validator:(value) {
                  return 'hello';
                } ,
              ),
              SizedBox(
                height: 10,
              ),
              GLPasswordTextField(
                hintText: 'hint',
                labelText: 'hint',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
