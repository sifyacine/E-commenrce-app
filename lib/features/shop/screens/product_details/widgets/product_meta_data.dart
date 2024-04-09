import 'package:ecommerceapp/common/widgets/images/circular_images.dart';
import 'package:ecommerceapp/common/widgets/texts/brandicon_verify_button.dart';
import 'package:ecommerceapp/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceapp/common/widgets/texts/produt_price_text.dart';
import 'package:ecommerceapp/utils/constants/enums.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded-container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        /// Price and sale price
        Row(
          children: [

            /// sale tage
            Positioned(
              top: 12,
              child: TRoundedContainer(
                radius: TSizes.sm,
                backgroundColor: TColors.secondaryColor.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(
                    vertical: TSizes.xs, horizontal: TSizes.sm),
                child: Text(
                  '25%',
                  style: Theme
                      .of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.kBlack),
                ),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),

            /// price
            Text(
              '\$300',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const TProductPricwText(price: '225'),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        /// title
        const TProductTitleText(
          title: 'Orange nike air jordan 4',
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        /// stock status
        Row(
          children: [
            const TProductTitleText(
              title: 'status',
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        /// brand
        Row(
          children: [
            TCircularImage(image: TImages.nikeIcon, width: 32, height: 32, backgroundColor: isDark ? TColors.kGrey : TColors.white, ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            TBrandTitleWithVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ],
    );
  }
}
