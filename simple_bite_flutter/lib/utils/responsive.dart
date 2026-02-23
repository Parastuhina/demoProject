import "dart:math";

import "package:flutter/widgets.dart";

import "app_constants.dart";

/// Lightweight scale helper based on the original Figma frame.
class ResponsiveScale {
  const ResponsiveScale(this.size);

  final Size size;

  double w(double value) => (size.width / AppConstants.figmaFrameWidth) * value;

  double h(double value) =>
      (size.height / AppConstants.figmaFrameHeight) * value;

  double sp(double value) {
    final factor = min(
      size.width / AppConstants.figmaFrameWidth,
      size.height / AppConstants.figmaFrameHeight,
    );
    return value * factor;
  }
}

