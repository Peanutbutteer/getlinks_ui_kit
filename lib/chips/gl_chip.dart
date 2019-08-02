import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/res/colors.dart';

class GLChip extends StatelessWidget {
  const GLChip(
    this.label, {
    this.onSelected,
    this.onDeleted,
  });

  final String label;
  final ValueChanged<bool> onSelected;
  final VoidCallback onDeleted;

  @override
  Widget build(BuildContext context) {
    return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      deleteIcon: const Icon(Icons.cancel, size: 20),
      onDeleted: onDeleted,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: GetLinksColors.description,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      deleteIconColor: GetLinksColors.description,
      label: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: GetLinksColors.gunmetal,
        ),
      ),
    );
  }
}
