import 'package:ecommerceapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
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
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: THelperFunctions.getColor(text) != null ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(
          color: selected ? TColors.white : null,
        ),
        avatar: THelperFunctions.getColor(text) != null ? TCircularContainer(width: 50, height: 50, backgroundColor: THelperFunctions.getColor(text)!) : null,
        shape: THelperFunctions.getColor(text) != null ? const CircleBorder() : null,
        backgroundColor: THelperFunctions.getColor(text) != null ? TColors.primaryColor : TColors.kDarkGrey,
        padding: THelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) : null,
        labelPadding: THelperFunctions.getColor(text) != null ? const EdgeInsets.all(0) : null,
        selectedColor: THelperFunctions.getColor(text) != null ? TColors.primaryColor : TColors.kDarkGrey,
      ),
    );
  }
}
