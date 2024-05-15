import 'package:flutter/material.dart';
import 'package:keop/core/constants/theme_constants.dart';

class BlueCustomContainer extends StatelessWidget {
  const BlueCustomContainer({
    super.key,
    this.padding,
    this.margin,
    this.child,
    this.height,
  });

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      decoration: BoxDecoration(
        color: ThemeColors.accentColor.withOpacity(0.33),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
