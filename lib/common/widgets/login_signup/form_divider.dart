import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';


class TFormDivider extends StatelessWidget {
  TFormDivider({
  super.key,
  required this.dividerText,
  });
  String dividerText;


  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: isDark ? TColors.kDarkGrey : TColors.kGrey, thickness: 0.6, indent: 5, endIndent: 20,)),
        Text(dividerText.toUpperCase(), style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: isDark ? TColors.kDarkGrey : TColors.kGrey, thickness: 0.6, indent: 20, endIndent: 5,)),
      ],
    );
  }
}