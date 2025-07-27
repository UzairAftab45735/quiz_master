import 'package:flutter/material.dart';
import 'core/app_colors.dart';
import 'core/app_styles.dart';
import 'routing/app_routes.dart'; // Import your router
import 'core/app_config.dart';

void main() {
  runApp(const QuizMasterApp());
}

class QuizMasterApp extends StatelessWidget {
  const QuizMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConfig.appName,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,           // ✅ Light background
        primaryColor: AppColors.primary,                 // Amber for buttons etc.
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.background,         // Blue AppBar
          titleTextStyle: AppStyles.headingLight,        // White text on blue
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: AppColors.black), // Black text
        ),
      ),
      routerConfig: AppRoutes.router,  // ✅ This was misplaced!
    );
  }
}
