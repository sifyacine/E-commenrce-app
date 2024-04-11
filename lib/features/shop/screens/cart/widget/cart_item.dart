import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/produt_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({Key? key, this.showAddRemoveButtons = true}) : super(key: key);


  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwItems,),

          if (showAddRemoveButtons) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: TProductPricwText(price: '275.5'),
              )
            ],
          ),
        ],
      ),
      separatorBuilder: (_, __) =>
      const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 4,
    );
  }
}
