import "package:flutter/material.dart";

import "../../utils/app_constants.dart";
import "../../utils/onboarding_data.dart";
import "../../utils/responsive.dart";
import "../../widgets/onboarding/onboarding_screen_shell.dart";
import "../../widgets/onboarding/selectable_option_card.dart";
import "meal_frequency_screen.dart";

class CookingTimeScreen extends StatefulWidget {
  const CookingTimeScreen({super.key});

  @override
  State<CookingTimeScreen> createState() => _CookingTimeScreenState();
}

class _CookingTimeScreenState extends State<CookingTimeScreen> {
  int? _selectedIndex = OnboardingDimens.defaultSelectedIndex;

  void _toggleSelection(int index) {
    setState(() {
      _selectedIndex = _selectedIndex == index ? null : index;
    });
  }

  void _continue() {
    if (_selectedIndex == null) return;
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => const MealFrequencyScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingScreenShell(
      title: AppStrings.cookingTimeTitle,
      subtitle: AppStrings.cookingTimeSubtitle,
      continueEnabled: _selectedIndex != null,
      onContinue: _continue,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final scale = ResponsiveScale(constraints.biggest);
          return ListView.separated(
            itemCount: OnboardingData.cookingTimes.length,
            separatorBuilder: (_, __) =>
                SizedBox(height: scale.h(OnboardingDimens.optionGap)),
            itemBuilder: (_, index) {
              final item = OnboardingData.cookingTimes[index];
              return SelectableOptionCard(
                scale: scale,
                icon: item.icon,
                title: item.title,
                subtitle: item.subtitle,
                selected: _selectedIndex == index,
                onTap: () => _toggleSelection(index),
              );
            },
          );
        },
      ),
    );
  }
}

