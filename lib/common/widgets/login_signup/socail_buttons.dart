import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';


class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.kGrey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){

            },
            icon: const Image(
              width: TSizes.icond,
              height: TSizes.icond,
              image: AssetImage(
                TImages.google,
              ),
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.kGrey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){

            },
            icon: const Image(
              width: TSizes.icond,
              height: TSizes.icond,
              image: AssetImage(
                TImages.facebook,
              ),
            ),
          ),
        ),
      ],
    );
  }
}