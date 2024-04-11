
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/products_attributes.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// product image slider
            const TProductImageSlider(),

            /// products details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace,),
              child: Column(
                children: [
                  /// rating nad share
                  const TRatingAndShare(),


                  /// price, title, stock and brand
                  const TProductMetaData(),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// attributes
                  const TProductAttributes(),


                  const SizedBox(height: TSizes.spaceBtwSections,),
                  /// checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Text('Checkout')),
                  ),


                  const SizedBox(height: TSizes.spaceBtwSections,),
                  /// description
                  const TSectionHeading(title: 'Description'),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const ReadMoreText(
                    'this is a product description for orange nike air jordan less vest. there are more this is just a demo description just to test the functionality of it',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: "Reviews(199) ", onPressed: (){}),
                      IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3, size: 18,),),
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections,),
                ],

              ),
            )

          ],
        ),
      ),
    );
  }
}
