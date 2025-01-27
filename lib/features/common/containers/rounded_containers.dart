import 'package:flutter/material.dart';
import 'package:rentndeal_admin_panel/constants/colors.dart';
import 'package:rentndeal_admin_panel/constants/sizes.dart';


class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.onTap,
    this.showBorder = false,
    this.radius = CSizes.cardRadiusLg,
    this.backgroundColor = CColors.white,
    this.borderColor = CColors.borderPrimary
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null,
        ),
        child: child,
      ),
    );
  }
}