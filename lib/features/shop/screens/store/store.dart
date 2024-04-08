import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/custom_shapes/containers/rounded-container.dart';
import 'package:ecommerceapp/common/widgets/custom_shapes/containers/search_bar_container.dart';
import 'package:ecommerceapp/common/widgets/layout/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerceapp/common/widgets/texts/brandicon_verify_button.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/enums.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/images/circular_images.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(
            onPressed: () {},
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.kBlack
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// search bar
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    const TSearchContainer(
                      text: "search in store",
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    /// featured brands
                    TSectionHeading(
                      title: " Featured Brands",
                      showActionButton: true,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems / 1.5,
                    ),
                    TGridLayout(
                      mainAxisExtent: 80,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return const TBrandCard();
                      },
                    )
                  ],
                ),
              ),
              /// tabs
              bottom: ,
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
