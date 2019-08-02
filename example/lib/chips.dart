import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/chips/chips.dart';

class Chips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GLChoiceChip(
              label: 'Payment',
              selected: true,
              onSelected: (value) {},
            ),
            SizedBox(height: 10),
            GLChip('Payment'),
            SizedBox(height: 10),
            GLChip(
              'Payment',
              onDeleted: () {},
            ),
          ],
        ),
      ),
    );
  }
}
