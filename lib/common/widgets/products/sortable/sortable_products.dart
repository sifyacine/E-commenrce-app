import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layout/grid_layout.dart';
import '../product_cards/product_cards_vertical.dart';


class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// dropdown
        DropdownButtonFormField(
          value: 'Name',
          decoration:
          const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
              DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        TGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const TProductCardsVertical()),
      ],
    );
  }
}
