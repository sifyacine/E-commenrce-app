import 'package:ecommerceapp/common/widgets/custom_shapes/containers/rounded-container.dart';
import 'package:ecommerceapp/common/widgets/texts/section_heading.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/image_strings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: "Payment Method", buttonTitle: "change", showActionButton: true, onPressed: (){},),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: isDark? TColors.light : TColors.white,
              child: Image(image: AssetImage(TImages.paypal), fit: BoxFit.contain,),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Text('Shipping fee', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        ),
      ],
    );
  }
}
