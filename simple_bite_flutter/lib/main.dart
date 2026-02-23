import "package:flutter/material.dart";

import "screens/onboarding/activity_level_screen.dart";
import "theme/app_theme.dart";
import "utils/app_constants.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SimpleBiteApp());
}

/// App entry point.
///
/// Integration note:
/// - If you're plugging this into an existing app, set
///   `home: const ActivityLevelScreen()` on your root MaterialApp
///   or register the screen in your route table.
class SimpleBiteApp extends StatelessWidget {
  const SimpleBiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const ActivityLevelScreen(),
    );
  }
}

