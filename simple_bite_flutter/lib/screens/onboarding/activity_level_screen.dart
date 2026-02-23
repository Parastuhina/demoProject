import "package:flutter/material.dart";

import "../../utils/app_constants.dart";
import "../../utils/onboarding_data.dart";
import "../../utils/responsive.dart";
import "../../widgets/onboarding/onboarding_screen_shell.dart";
import "../../widgets/onboarding/selectable_option_card.dart";
import "cooking_time_screen.dart";

class ActivityLevelScreen extends StatefulWidget {
  const ActivityLevelScreen({super.key});

  @override
  State<ActivityLevelScreen> createState() => _ActivityLevelScreenState();
}

class _ActivityLevelScreenState extends State<ActivityLevelScreen> {
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
        builder: (_) => const CookingTimeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingScreenShell(
      title: AppStrings.activityLevelTitle,
      subtitle: AppStrings.activityLevelSubtitle,
      continueEnabled: _selectedIndex != null,
      onContinue: _continue,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final scale = ResponsiveScale(constraints.biggest);
          return ListView.separated(
            itemCount: OnboardingData.activityLevels.length,
            separatorBuilder: (_, __) =>
                SizedBox(height: scale.h(OnboardingDimens.optionGap)),
            itemBuilder: (_, index) {
              final item = OnboardingData.activityLevels[index];
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

