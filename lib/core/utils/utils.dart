
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keop/core/constants/image_constants.dart';

/// PreLoading the Images into the system cache
void preLoadImages(BuildContext context) {
  for (final image in ImageConstants.imageList) {
    precacheImage(AssetImage(image), context);
  }
}
