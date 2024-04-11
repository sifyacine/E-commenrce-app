import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(title: "Payment Method", buttonTitle: "change", showActionButton: true, onPressed: (){},),
        Text('sif Yacine', style: Theme.of(context).textTheme.bodyLarge,),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('+213 676774374', style: Theme.of(context).textTheme.bodyMedium, ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text('south liana, meine 87695, USA', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)),
          ],
        ),

      ],
    );
  }
}
