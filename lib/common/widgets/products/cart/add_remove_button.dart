import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icon/circular_icon.dart';


class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
  super.key,
  });


  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// add remove button
        TCircularIcon(icon: Iconsax.minus, width: 32, height: 32, size: TSizes.md, color: isDark ? TColors.white : TColors.kBlack, backgroundColor: isDark ? TColors.kDarkGrey : TColors.light ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text('2', style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems,),
        const TCircularIcon(icon: Iconsax.add, width: 32, height: 32, size: TSizes.md, color: TColors.white, backgroundColor: TColors.primaryColor ),
      ],
    );
  }
}
