import 'package:ecommerceapp/common/widgets/products/product_cards/product_cards_vertical.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_bar_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header part
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// appBar
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// searchbar
                  const TSearchContainer(
                    text: 'Search in store',
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// heading
                        TSectionHeading(
                          title: 'Product Categories',
                          textColor: TColors.white,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// categories
                        const THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// body part
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// promo slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// section heading
                  TSectionHeading(title: 'Popular products', onPressed: (){}, showActionButton: true,),
                  SizedBox(height: TSizes.spaceBtwItems,),


                  /// -- popular products
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardsVertical(),  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
