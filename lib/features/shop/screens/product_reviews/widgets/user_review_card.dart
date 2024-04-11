import 'package:ecommerceapp/common/widgets/custom_shapes/containers/rounded-container.dart';
import 'package:ecommerceapp/common/widgets/products/rating/rating_indicator.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.user),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('Sif Yacine', style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),

        /// reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            Text('02 jan, 2024', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems,),

        const ReadMoreText(
          'the user interface of the app is quite intuitive. i was able to navigate and make purchases seamlessly. great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
        ),

        /// company review
        TRoundedContainer(
          backgroundColor: isDark ? TColors.kDarkGrey : TColors.kGrey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                /// name of the company and date of reply
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Luna Store", style: Theme.of(context).textTheme.bodyLarge,),
                    Text("03, Jan 2024", style: Theme.of(context).textTheme.bodyLarge,),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
                  'the user interface of the app is quite intuitive. i was able to navigate and make purchases seamlessly. great job!',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColor),
                ),
                ///
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),

      ],

    );
  }
}
