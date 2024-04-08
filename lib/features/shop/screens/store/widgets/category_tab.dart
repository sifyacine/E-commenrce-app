import 'package:ecommerceapp/common/widgets/layout/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brands_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Brands
            const TBrandShowCase(
              images: [
                TImages.productImage19,
                TImages.productImage8,
                TImages.productImage9
              ],
            ),            const TBrandShowCase(
              images: [
                TImages.productImage19,
                TImages.productImage8,
                TImages.productImage9
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),

            /// products
            TSectionHeading(
              title: "you might like also",
              showActionButton: true,
              onPressed: () {},
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            TGridLayout(
                itemCount: 4, itemBuilder: (_, index) => const TProductCardsVertical()),
            const SizedBox(height: TSizes.spaceBtwSections,)
          ],
        ),
      ),
    ]
    );
  }
}
