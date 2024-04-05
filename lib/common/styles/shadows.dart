import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: TColors.kDarkGrey.withOpacity(0.1),
      blurRadius: 50, spreadRadius: 7,
      offset: const Offset(0, 2)
  );
  // BoxShadow
  static final horizontalProductShadow = BoxShadow(
      color: TColors.kDarkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  ); // BoxShadow
}