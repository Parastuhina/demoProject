class AppConstants {
  const AppConstants._();

  // Base frame size extracted from the public Figma thumbnail.
  static const double figmaFrameWidth = 400.0;
  static const double figmaFrameHeight = 800.0;

  // Positioning for the centered logo block.
  static const double logoCenterYOffset = 34.0;

  // Brand icon metrics.
  static const double brandIconSize = 54.0;
  static const double brandIconRadius = 14.0;
  static const double brandIconToTextGap = 14.0;

  // Wordmark and tagline typography tokens.
  static const double wordmarkFontSize = 30.0;
  static const double wordmarkLineHeight = 1.05;
  static const double taglineFontSize = 11.0;
  static const double taglineLineHeight = 1.15;
  static const double taglineLetterSpacing = 0.05;
  static const double taglineTopSpacing = 2.0;

  // Fork glyph drawing tokens.
  static const double forkGlyphSize = 23.0;
  static const double forkStemWidth = 3.0;
  static const double forkStemTop = 8.0;
  static const double forkStemBottom = 3.0;
  static const double forkProngWidth = 2.0;
  static const double forkProngHeight = 7.0;
  static const double forkProngGap = 3.0;

  // Background blob tokens.
  static const double topLeftBlobSize = 310.0;
  static const double topLeftBlobLeft = -124.0;
  static const double topLeftBlobTop = 120.0;
  static const double topLeftBlobInnerOpacity = 0.95;

  static const double centerBlobSize = 230.0;
  static const double centerBlobLeft = 84.0;
  static const double centerBlobTop = 390.0;
  static const double centerBlobInnerOpacity = 0.55;

  static const double bottomLeftBlobSize = 320.0;
  static const double bottomLeftBlobLeft = -165.0;
  static const double bottomLeftBlobTop = 610.0;
  static const double bottomLeftBlobInnerOpacity = 0.50;

  static const double bottomRightBlobSize = 235.0;
  static const double bottomRightBlobRight = -98.0;
  static const double bottomRightBlobTop = 590.0;
  static const double bottomRightBlobInnerOpacity = 0.45;
  static const double blobOuterOpacity = 0.0;

  // Dot circle tokens.
  static const double centerDotCircleSize = 108.0;
  static const double centerDotCircleLeft = 136.0;
  static const double centerDotCircleTop = 523.0;

  static const double lowerDotCircleSize = 180.0;
  static const double lowerDotCircleLeft = -22.0;
  static const double lowerDotCircleTop = 642.0;
  static const double dotRadius = 1.1;
  static const double dotSpacing = 8.2;
  static const double dotFadeOpacity = 0.8;
}

class AppSpacing {
  const AppSpacing._();

  static const double xxs = 4.0;
  static const double xs = 8.0;
  static const double sm = 12.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
}

class AppRadii {
  const AppRadii._();

  static const double card = 12.0;
  static const double largeCard = 16.0;
  static const double button = 18.0;
  static const double chip = 10.0;
  static const double full = 999.0;
}

class AppStroke {
  const AppStroke._();

  static const double thin = 1.0;
  static const double medium = 2.0;
  static const double progressRing = 14.0;
  static const double targetProgress = 5.0;
}

class OnboardingDimens {
  const OnboardingDimens._();

  static const double horizontalPadding = 24.0;
  static const double topHeaderGap = 14.0;
  static const double topBarHeight = 44.0;
  static const double backIconSize = 30.0;
  static const double backIconSplashRadius = 22.0;
  static const double titleTopSpacing = 8.0;
  static const double subtitleTopSpacing = 6.0;
  static const double optionsTopSpacing = 28.0;
  static const double optionGap = 14.0;
  static const double optionHeight = 70.0;
  static const double optionIconSize = 22.0;
  static const double optionHorizontalPadding = 16.0;
  static const double optionVerticalPadding = 14.0;
  static const double continueButtonHeight = 60.0;
  static const double progressBarHeight = 4.0;
  static const double progressBarFraction = 0.52;
  static const double bottomPanelTopPadding = 14.0;
  static const double bottomPanelBottomPadding = 22.0;
  static const double disabledButtonOpacity = 0.62;

  static const double paymentIllustrationSize = 94.0;
  static const double paymentIllustrationTopSpacing = 32.0;
  static const double paymentFieldsTopSpacing = 44.0;
  static const double paymentFieldGap = 18.0;
  static const double paymentDoubleFieldGap = 16.0;
  static const double paymentFieldHeight = 54.0;
  static const double paymentBottomPanelHeight = 184.0;
  static const double paymentCardRotation = -0.1;
  static const double paymentCardWidthFactor = 0.82;
  static const double paymentCardHeightFactor = 0.56;
  static const double paymentCardIconSize = 34.0;
  static const double paymentPlusBubbleSize = 28.0;
  static const double paymentPlusIconSize = 20.0;
  static const double paymentDecorTopA = 8.0;
  static const double paymentDecorLeftA = 7.0;
  static const double paymentDecorTopB = 18.0;
  static const double paymentDecorRightB = 8.0;
  static const double paymentDecorLeftC = 4.0;
  static const double paymentDecorBottomC = 25.0;
  static const double paymentDecorRightD = 2.0;
  static const double paymentDecorTopD = 34.0;
  static const double paymentDecorIcon = 8.0;
  static const double paymentDecorDotIcon = 4.0;
  static const double paymentPlusRight = 4.0;
  static const double paymentPlusBottom = 8.0;

  static const double centerIconSize = 74.0;
  static const double centerIconSummary = 66.0;
  static const double centerTitleTopSpacing = 14.0;
  static const double centerSubtitleTopSpacing = 6.0;

  static const double buildRingSize = 182.0;
  static const double buildRingLabelSize = 48.0;
  static const double buildScreenTitleTopSpacing = 68.0;
  static const double buildProgressValue = 0.88;
  static const double buildChecklistTopSpacing = 26.0;
  static const double buildChecklistCardPadding = 18.0;
  static const double buildChecklistItemGap = 16.0;
  static const double buildChecklistIconTopPadding = 2.0;
  static const double buildChecklistIconSize = 20.0;
  static const int buildChecklistCompletedCount = 3;
  static const int buildChecklistCurrentIndex = 3;

  static const double congratsTopPanelRadius = 26.0;
  static const double targetCardHeight = 124.0;
  static const double whatsInsideCardHeight = 90.0;
  static const double targetProgressWidth = 108.0;
  static const double summaryButtonBottomPadding = 20.0;
  static const int summaryTargetColumns = 2;
  static const double summaryTargetAspectRatio = 0.95;
  static const double targetIconBubbleSize = 34.0;
  static const double targetIconSize = 19.0;
  static const double targetValueSize = 38.0;
  static const double insideIconBubbleSize = 24.0;
  static const double insideIconSize = 14.0;
  static const double insideSubtitleFontSize = 9.0;
  static const int defaultSelectedIndex = 0;
}

class AppFontSize {
  const AppFontSize._();

  static const double headingLarge = 38.0;
  static const double heading = 22.0;
  static const double sectionTitle = 16.0;
  static const double subtitle = 14.0;
  static const double optionTitle = 15.0;
  static const double optionSubtitle = 11.0;
  static const double button = 16.0;
  static const double largeValue = 38.0;
  static const double body = 16.0;
  static const double small = 12.0;
  static const double tiny = 10.0;
}

class AppDurations {
  const AppDurations._();

  static const Duration quick = Duration(milliseconds: 200);
  static const Duration medium = Duration(milliseconds: 300);
  static const Duration loadingTransition = Duration(seconds: 2);
}

class AppStrings {
  const AppStrings._();

  static const String appName = "Simple Bite";
  static const String wordmarkPrimary = "Simple";
  static const String wordmarkAccent = "Bite";
  static const String tagline = "Less counting. More living.";

  static const String continueAction = "Continue";
  static const String startJourneyAction = "Start My Journey";

  static const String activityLevelTitle = "Activity Level";
  static const String activityLevelSubtitle = "How active are you?";
  static const String activitySedentaryTitle = "Sedentary";
  static const String activitySedentarySubtitle = "Little to no exercise";
  static const String activityLightTitle = "Lightly Active";
  static const String activityLightSubtitle = "1-3 days/week";
  static const String activityModerateTitle = "Moderately Active";
  static const String activityModerateSubtitle = "3-5 days/week";
  static const String activityVeryTitle = "Very Active";
  static const String activityVerySubtitle = "6-7 days/week";
  static const String activityAthleteTitle = "Athlete";
  static const String activityAthleteSubtitle = "Intense training";

  static const String cookingTimeTitle = "Cooking Time";
  static const String cookingTimeSubtitle = "How much time can you dedicate per day?";
  static const String cookingFastTitle = "10-15 minutes";
  static const String cookingMediumTitle = "20-30 minutes";
  static const String cookingLongTitle = "30-45 minutes";
  static const String cookingExtendedTitle = "1 hour +";

  static const String mealFrequencyTitle = "Meal Frequency";
  static const String mealFrequencySubtitle = "How many meals do you want per day?";
  static const String meal2Title = "2 Meals";
  static const String meal2Subtitle = "Breakfast + Dinner";
  static const String meal3Title = "3 Meals";
  static const String meal3Subtitle = "Breakfast + Lunch + Dinner";
  static const String mealSnacksTitle = "3 Meals + 2 Snacks";
  static const String mealSnacksSubtitle = "Full meal plan";
  static const String mealUnsureTitle = "I'm Not Sure";
  static const String mealUnsureSubtitle =
      "We'll choose the best daily meal structure for you.";
  static const String mealPopularBadge = "Most Popular";

  static const String paymentMethodTitle = "Payment Method";
  static const String paymentMethodSubtitle = "Please select your debit/credit card";
  static const String paymentNameOnCard = "Name on Card";
  static const String paymentCardNumber = "Card Number";
  static const String paymentExpiryDate = "Expiry Date";
  static const String paymentCvv = "Cvv";
  static const String paymentPrice = "\$9.99";
  static const String paymentPerMonth = "/mo";

  static const String paymentDoneTitle = "Payment Done";
  static const String paymentDoneSubtitle = "Your Payment has been done";

  static const String buildPlanTitle = "Building Your Meal Plan";
  static const String buildPlanSubtitle = "This only takes a moment...";
  static const String buildStepAnalyzingA = "Analyzing your preferences";
  static const String buildStepAnalyzingB = "Analyzing your preferences";
  static const String buildStepSelecting = "Selecting recipes tailored to\nyour goals";
  static const String buildStepBalancing = "Balancing calories & macros";
  static const String buildStepFinalizing = "Finalizing your personalized\nmeal plan";

  static const String congratsTitle = "Congratulations!";
  static const String congratsSubtitle = "Your Meal Plan Is Ready";
  static const String congratsGoalPrefix = "You should";
  static const String congratsGoal = "Lose 1 kg by February 19, 2026";
  static const String dailyTargetsTitle = "Daily Targets";
  static const String whatsInsideTitle = "What's Inside";

  static const String targetCalories = "Calories";
  static const String targetProtein = "Protein";
  static const String targetCarbs = "Carbs";
  static const String targetFats = "Fats";

  static const String insideDailyMealsTitle = "Daily Meals";
  static const String insideDailyMealsSubtitle =
      "Meals tailored to your goals,\npreferences, and schedule.";
  static const String insideGroceryTitle = "Grocery Lists";
  static const String insideGrocerySubtitle =
      "Automatically built for\nevery week's meals for an\neasy experience.";
  static const String insideProgressTitle = "Progress";
  static const String insideProgressSubtitle =
      "We track -- you just check\noff your meals, and meet\nyour goals.";
}

