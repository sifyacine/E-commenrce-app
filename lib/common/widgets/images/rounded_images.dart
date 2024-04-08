import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    Key? key,
    this.width,
    this.height,
    required this.imageUrl,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.onPressed,
    this.padding,
    this.applyImageRadius = true,
    this.borderRadius = TSizes.md,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BoxFit fit;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: applyImageRadius? BorderRadius.circular(borderRadius) : BorderRadius.zero,
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(TSizes.defaultSpace)
              : BorderRadius.zero,
          child: isNetworkImage
              ? Image.network(
            imageUrl,
            fit: fit,
          )
              : Image.asset(
            imageUrl,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
