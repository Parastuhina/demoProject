import "dart:async";

import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";
import "../../widgets/onboarding/meal_plan_progress.dart";
import "congratulations_simple_screen.dart";

class MealPlanBuildingScreen extends StatefulWidget {
  const MealPlanBuildingScreen({super.key});

  @override
  State<MealPlanBuildingScreen> createState() => _MealPlanBuildingScreenState();
}

class _MealPlanBuildingScreenState extends State<MealPlanBuildingScreen> {
  Timer? _navigationTimer;

  @override
  void initState() {
    super.initState();
    _navigationTimer = Timer(AppDurations.loadingTransition, () {
      if (!mounted) return;
      Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (_) => const CongratulationsSimpleScreen()),
      );
    });
  }

  @override
  void dispose() {
    _navigationTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = ResponsiveScale(constraints.biggest);
        return Scaffold(
          backgroundColor: AppColors.paleBackground,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: scale.w(OnboardingDimens.horizontalPadding),
              ),
              child: Column(
                children: [
                  SizedBox(height: scale.h(OnboardingDimens.buildScreenTitleTopSpacing)),
                  Text(
                    AppStrings.buildPlanTitle,
                    style: AppTextStyles.sectionTitle(scale.sp(AppFontSize.heading))
                        .copyWith(color: AppColors.heading),
                  ),
                  SizedBox(height: scale.h(AppSpacing.xl)),
                  MealPlanProgressSection(
                    scale: scale,
                    progress: OnboardingDimens.buildProgressValue,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

