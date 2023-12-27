import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';

class CustomNetworkImage extends StatelessWidget {
  final String image;
  final BorderRadius borderRadius;
  final double height;
  final double width;
  final BoxFit fit;
  final Color backgroundColor;
  final bool isBorderActive;
  final Color borderColor;
  final double borderWidth;

  const CustomNetworkImage({
    super.key,
    required this.image,
    required this.borderRadius,
    this.height = double.maxFinite,
    this.width = double.maxFinite,
    this.fit = BoxFit.contain,
    this.backgroundColor = Colors.transparent,
    this.isBorderActive = false,
    this.borderColor = Colors.white,
    this.borderWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      height: height,
      width: width,
      fit: fit,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: isBorderActive
              ? Border.all(
                  color: borderColor,
                  width: borderWidth,
                )
              : null,
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
        ),
      ),
      placeholder: (context, url) => ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          AppAssets.placeHolder,
          fit: BoxFit.cover,
        ),
      ),
      errorWidget: (context, url, error) => ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          AppAssets.placeHolder,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
