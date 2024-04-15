import 'package:ecommerceapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/images/rounded_images.dart';
import 'package:ecommerceapp/common/widgets/texts/brandicon_verify_button.dart';
import 'package:ecommerceapp/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceapp/common/widgets/texts/produt_price_text.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../icon/circular_icon.dart';

class TProductCardsHorizontal extends StatelessWidget {
  const TProductCardsHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: isDark ? TColors.kDarkGrey : TColors.white,
      ),
      child: Row(
        children: [
          /// thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: isDark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// thumbnail image
                const SizedBox(
                    width: 120,
                    height: 120,
                    child: TRoundedImage(
                      imageUrl: TImages.productImage16,
                      applyImageRadius: true,
                    )),

                /// sale tag
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
                    )),
              ],
            ),
          ),

          /// details
          SizedBox(
            width: 172,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: TSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: "Iphone 13 pro max apple",
                        maxLines: 2,
                        smallSize: true,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems / 2),
                      TBrandTitleWithVerifiedIcon(title: 'Apple',),
                    ],
                  ),
                ),

                const Spacer(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// pricing
                      const Flexible(child: TProductPricwText(price: '750')),

                      /// add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconlg * 1.2,
                          height: TSizes.iconlg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: TColors.white,),),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
