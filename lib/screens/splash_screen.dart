import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_master/routing/app_paths.dart';
import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../core/app_config.dart';
import '../core/app_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SplashScreenBody();
  }
}


//////////////////////////////////////////////////
/////////////// _SplashScreenBody ////////////////
//////////////////////////////////////////////////
class _SplashScreenBody extends StatefulWidget {
  const _SplashScreenBody();

  @override
  State<_SplashScreenBody> createState() => _SplashScreenBodyState();
}


//////////////////////////////////////////////////
///////////// _SplashScreenBodyState /////////////
//////////////////////////////////////////////////
class _SplashScreenBodyState extends State<_SplashScreenBody> {
  @override
  void initState() {
    super.initState();

    // Delay 2 seconds, then navigate to main screen
    Future.delayed(AppConfig.splashDelay, () {
      context.go(AppPaths.main); // Use go_router to navigate
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildSplashLayout(); // move layout to a method for clean code
  }
}


//////////////////////////////////////////////////
/////////////// _buildSplashLayout ///////////////
//////////////////////////////////////////////////
Widget _buildSplashLayout() {
  return Scaffold(
    backgroundColor: AppColors.background,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image.asset(AppAssets.logo, height: 100),
          const SizedBox(height: 20),
          const Text(
            AppConfig.appName,
            style: AppStyles.headingLight,
          ),
          const SizedBox(height: 10),
          const Text(
            AppConfig.appSlogan,
            style: AppStyles.subheadingLight
          ),
        ],
      ),
    ),
  );
}
