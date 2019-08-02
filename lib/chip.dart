import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/res/colors.dart';

class GLChip extends StatelessWidget {
  const GLChip({@required this.label, this.fontSize = 14});

  final String label;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: StadiumBorder(
        side: BorderSide(
          color: GetLinksColors.primary,
        ),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      key: ValueKey<String>(label),
      padding: const EdgeInsets.all(2),
      backgroundColor: GetLinksColors.primary,
      labelStyle: TextStyle(color: Colors.white, fontSize: 12),
      label: Text(
        label,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
