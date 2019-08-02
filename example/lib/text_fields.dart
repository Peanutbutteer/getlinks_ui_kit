import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/text_fields/text_fields.dart';

class TextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            )
          ],
        ),
      ),
    );
  }
}
