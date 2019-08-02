import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/res/colors.dart';

class GLChoiceChip extends StatelessWidget {
  const GLChoiceChip({
    @required this.label,
    @required this.selected,
    this.onSelected,
  });

  final String label;
  final ValueChanged<bool> onSelected;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      key: ValueKey<String>(label),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      selected: selected ?? false,
      onSelected: onSelected,
      pressElevation: 0,
      selectedColor: GetLinksColors.primary,
      backgroundColor: Colors.white,
      disabledColor: GetLinksColors.gunmetal,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: GetLinksColors.lavenderGray,
          style: selected || onSelected == null
              ? BorderStyle.none
              : BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      labelStyle: TextStyle(
        color: selected ? Colors.white : GetLinksColors.description,
        fontSize: 16,
      ),
      label: Text(label),
    );
  }
}
