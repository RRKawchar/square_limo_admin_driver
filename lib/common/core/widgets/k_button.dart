import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';

class KButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? borderRadius;
  final Color? bgColor;
  final Widget child;
  final double? height;
  final double? width;
  const KButton({
    super.key,
    this.onPressed,
    this.borderRadius,
    this.bgColor,
    required this.child,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
      ),
      color: bgColor ?? context.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: height ?? 42,
      minWidth: width ?? context.screenWidth,
      elevation: 0.0,
      child: child,
    );
  }
}
