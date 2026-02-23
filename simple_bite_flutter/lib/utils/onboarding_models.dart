import "package:flutter/material.dart";

class SelectionOptionItem {
  const SelectionOptionItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.badge,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final String? badge;
}

class MacroTargetItem {
  const MacroTargetItem({
    required this.title,
    required this.value,
    required this.icon,
    required this.progress,
    required this.progressColor,
    required this.iconBackground,
  });

  final String title;
  final String value;
  final IconData icon;
  final double progress;
  final Color progressColor;
  final Color iconBackground;
}

class WhatsInsideItem {
  const WhatsInsideItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconBackground,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconBackground;
}

