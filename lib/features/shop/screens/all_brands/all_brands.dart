import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/brands/brand_card.dart';
import 'package:ecommerceapp/common/widgets/layout/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/features/shop/screens/all_brands/brand_products.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Brand'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// heading
              const TSectionHeading(title: 'Brands'),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// brands
              TGridLayout(itemCount: 6, mainAxisExtent: 80,itemBuilder: (context, index) => TBrandCard(showBorder: true, onTab: (){Get.to(() => const BrandProducts());},)),

            ],
          ),
        ),
      ),
    );
  }
}
