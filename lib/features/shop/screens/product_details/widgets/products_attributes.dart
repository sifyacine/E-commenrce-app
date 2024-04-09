import 'package:ecommerceapp/common/widgets/custom_shapes/containers/rounded-container.dart';
import 'package:ecommerceapp/common/widgets/texts/product_title_text.dart';
import 'package:ecommerceapp/common/widgets/texts/produt_price_text.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// selected attribute pricing and description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: isDark ? TColors.kDarkGrey : TColors.kGrey,
          child: Column(
            children: [
              /// title, price, and stock status
              Row(
                children: [
                  const TSectionHeading(
                    title: 'verification',
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),

                          /// actual price
                          Text(
                            '\$25',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                          ),

                          /// sale price
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          const TProductPricwText(price: '20')
                        ],
                      ),

                      /// stock
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'in stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// verification description
              const TProductTitleText(
                title:
                    'this is the description of the product and it can go up to max 4 lines ',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// attributes
        Column(
          children: [
            const TSectionHeading(title: 'Colors'),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            TChoiceChip(text: '', selected: true,)
          ],
        )
      ],
    );
  }
}
