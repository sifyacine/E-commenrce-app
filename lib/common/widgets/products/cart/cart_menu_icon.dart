import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';


class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
  super.key, required this.onPressed, required this.iconColor,
  });
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: (){onPressed;}, icon: const Icon(Iconsax.shopping_bag), color: iconColor,),
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: TColors.error,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(child: Text("2", style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8), )),
          ),
        ),
      ],
    );
  }
}

