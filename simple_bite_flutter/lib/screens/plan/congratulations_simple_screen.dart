import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";
import "../../widgets/common/bottom_action_panel.dart";
import "../../widgets/common/center_message_panel.dart";
import "congratulations_summary_screen.dart";

class CongratulationsSimpleScreen extends StatelessWidget {
  const CongratulationsSimpleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = ResponsiveScale(constraints.biggest);
        return Scaffold(
          backgroundColor: AppColors.onboardingScaffold,
          body: SafeArea(
            child: Center(
              child: CenterMessagePanel(
                scale: scale,
                icon: Icons.thumb_up_alt_outlined,
                title: AppStrings.congratsTitle,
                subtitle: AppStrings.congratsSubtitle,
              ),
            ),
          ),
          bottomNavigationBar: BottomActionPanel(
            scale: scale,
            buttonLabel: AppStrings.startJourneyAction,
            buttonEnabled: true,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => const CongratulationsSummaryScreen(),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

