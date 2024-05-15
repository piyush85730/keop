import 'package:flutter/material.dart';

import 'wave_dots/wave_dots.dart';

class LoadingAnimationWidget {
  LoadingAnimationWidget._();

  /// Three dots go up and down give wave effect. Required color is applied to
  /// all dots.
  static Widget waveDots({
    required Color color,
    required double size,
    Key? key,
  }) {
    return WaveDots(
      color: color,
      size: size,
      key: key,
    );
  }
}
