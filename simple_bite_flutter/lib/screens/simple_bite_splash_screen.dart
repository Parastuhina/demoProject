import "package:flutter/material.dart";

import "../utils/app_constants.dart";
import "../utils/responsive.dart";
import "../widgets/background/soft_gradient_background.dart";
import "../widgets/branding/simple_bite_logo.dart";

/// Main splash screen extracted from the provided Figma design.
class SimpleBiteSplashScreen extends StatelessWidget {
  const SimpleBiteSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = ResponsiveScale(constraints.biggest);

        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              SoftGradientBackground(scale: scale),
              Align(
                alignment: Alignment.center,
                child: Transform.translate(
                  offset: Offset(0, scale.h(AppConstants.logoCenterYOffset)),
                  child: SimpleBiteLogo(scale: scale),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

