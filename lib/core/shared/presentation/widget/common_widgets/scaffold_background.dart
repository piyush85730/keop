import 'package:flutter/material.dart';
import 'package:keop/core/constants/image_constants.dart';

class ScaffoldBackground extends StatelessWidget {
  const ScaffoldBackground({
    required this.child,
    super.key,
    this.opacity = 1.0,
  });

  final Widget child;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(ImageConstants.imgKeopBackground),
          fit: BoxFit.cover,
          opacity: opacity,
        ),
      ),
      child: child,
    );
  }
}
