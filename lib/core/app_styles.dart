import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  // Headings
  static const TextStyle headingLight = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle headingDark = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  // Subheadings
  static const TextStyle subheadingLight = TextStyle(
    fontSize: 16,
    color: AppColors.textLight,
  );

  static const TextStyle subheadingDark = TextStyle(
    fontSize: 16,
    color: AppColors.textDark,
  );

  // Button Styles
  static const TextStyle buttonLight = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const TextStyle buttonDark = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
}
