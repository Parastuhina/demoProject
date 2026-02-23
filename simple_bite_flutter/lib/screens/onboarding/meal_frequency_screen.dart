import "package:flutter/material.dart";

import "../../utils/app_constants.dart";
import "../../utils/onboarding_data.dart";
import "../../utils/responsive.dart";
import "../../widgets/onboarding/onboarding_screen_shell.dart";
import "../../widgets/onboarding/selectable_option_card.dart";
import "../payment/payment_method_screen.dart";

class MealFrequencyScreen extends StatefulWidget {
  const MealFrequencyScreen({super.key});

  @override
  State<MealFrequencyScreen> createState() => _MealFrequencyScreenState();
}

class _MealFrequencyScreenState extends State<MealFrequencyScreen> {
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
        builder: (_) => const PaymentMethodScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingScreenShell(
      title: AppStrings.mealFrequencyTitle,
      subtitle: AppStrings.mealFrequencySubtitle,
      continueEnabled: _selectedIndex != null,
      onContinue: _continue,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final scale = ResponsiveScale(constraints.biggest);
          return ListView.separated(
            itemCount: OnboardingData.mealFrequencies.length,
            separatorBuilder: (_, __) =>
                SizedBox(height: scale.h(OnboardingDimens.optionGap)),
            itemBuilder: (_, index) {
              final item = OnboardingData.mealFrequencies[index];
              return SelectableOptionCard(
                scale: scale,
                icon: item.icon,
                title: item.title,
                subtitle: item.subtitle,
                badge: item.badge,
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

