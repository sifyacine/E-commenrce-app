
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/products_attributes.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// product image slider
            TProductImageSlider(),

            /// products details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace,),
              child: Column(
                children: [
                  /// rating nad share
                  TRatingAndShare(),


                  /// price, title, stock and brand
                  TProductMetaData(),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// attributes
                  TProductAttributes(),

                  /// checkout button



                  /// description



                  /// reviews


                ],

              ),
            )

          ],
        ),
      ),
    );
  }
}
