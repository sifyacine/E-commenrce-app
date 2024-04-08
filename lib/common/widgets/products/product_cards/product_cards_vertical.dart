import 'package:ecommerceapp/common/styles/shadows.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../custom_shapes/containers/rounded-container.dart';
import '../../icon/circular_icon.dart';
import '../../texts/product_title_text.dart';
import '../../texts/produt_price_text.dart';

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
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: isDark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// thumbnail image
                const TRoundedImage(
                  imageUrl: TImages.productImage19,
                  applyImageRadius: true,
                ),

                /// -- sale tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        vertical: TSizes.xs, horizontal: TSizes.sm),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.kBlack),
                    ),
                  ),
                ),

                /// fav icon
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.redAccent,
                    ))
              ],
            ),
          ),

          /// details
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              children: [
                const TProductTitleText(
                  title: 'blue nike air jordan 4 shoe',
                  smallSize: true,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),
                Row(
                  children: [
                    Text('Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium),
                    const SizedBox(
                      width: TSizes.xs,
                    ),
                    const Icon(
                      Iconsax.verify5,
                      color: TColors.primaryColor,
                      size: TSizes.iconXs,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// price
                    const TProductPricwText(price: '35.5',),
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius),
                        ),
                      ),
                      child: const SizedBox(
                        height: TSizes.iconlg * 1.2,
                        width: TSizes.iconlg * 1.2,
                        child: Center(
                          child: Icon(
                            Iconsax.add,
                            color: TColors.light,
                          ),
                        ),
                      ),
                    ),

                    ///
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

