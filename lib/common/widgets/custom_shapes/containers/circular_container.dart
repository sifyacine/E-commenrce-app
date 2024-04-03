import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
  super.key,
  this.width = 400,
  this.height = 400,
  this.radius = 400,
  this.padding = 0,
  this.child,
  this.backgroundColor = TColors.white,
  });

  final double width;
  final double height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(400),
              color: backgroundColor,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}