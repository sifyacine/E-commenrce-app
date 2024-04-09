import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';


class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    Key? key,
    required this.text,
    required this.selected,
    this.onSelected,
  }) : super(key: key);

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(
        color: selected ? TColors.white : null,
      ),
    );
  }
}
