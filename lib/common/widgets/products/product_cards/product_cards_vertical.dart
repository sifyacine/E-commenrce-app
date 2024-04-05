import 'package:ecommerceapp/common/styles/shadows.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../custom_shapes/containers/rounded-container.dart';

class TProductCardsVertical extends StatelessWidget {
  const TProductCardsVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: isDark ? TColors.kDarkGrey : TColors.white,
      ),
      child: Column(
        children: [
          /// Thumbnail, wishlistbutton, discount tag
          TRoundedContainer(
            height: 180,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: isDark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// thumbnail image

              ],
            ),
          ),

          /// details


        ],
      ),
    );
  }
}
