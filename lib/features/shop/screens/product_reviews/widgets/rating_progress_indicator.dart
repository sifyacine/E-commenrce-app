import 'package:ecommerceapp/features/shop/screens/product_reviews/widgets/progress_indecator_and_ratings.dart';
import 'package:flutter/material.dart';


class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3 ,child: Text('4.7', style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7 ,
          child: Column(
            children: [
              TRatingprogressIndicator(text: '5', value: 0.9,),
              TRatingprogressIndicator(text: '4', value: 0.8,),
              TRatingprogressIndicator(text: '3', value: 0.6,),
              TRatingprogressIndicator(text: '2', value: 0.5,),
              TRatingprogressIndicator(text: '1', value: 0.3,),
            ],
          ),
        ),
      ],
    );
  }
}
