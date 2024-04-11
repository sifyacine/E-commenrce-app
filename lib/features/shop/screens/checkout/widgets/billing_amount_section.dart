import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('\$ 256.00', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping fee', style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('\$ 25.00', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('tax fee', style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('\$ 5.00', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('\$ 300', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),


      ],
    );
  }
}
