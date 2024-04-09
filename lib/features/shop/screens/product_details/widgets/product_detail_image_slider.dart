import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icon/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
  super.key,
  });


  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: isDark ? TColors.kDarkGrey : TColors.light,
        child: Stack(
          children: [
            /// main large image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding:
                  EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(TImages.productImage8))),
                )),

            /// image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => TRoundedImage(
                      imageUrl: TImages.productImage8,
                      width: 80,
                      backgroundColor:
                      isDark ? TColors.dark : TColors.white,
                      border: Border.all(color: TColors.primaryColor),
                      padding: const EdgeInsets.all(TSizes.sm),
                    ),
                    separatorBuilder: (_, __) => const SizedBox(
                      width: TSizes.spaceBtwItems,
                    ),
                    itemCount: 4),
              ),
            ),
            /// App bar icons
            const TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5, color: Colors.red,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
