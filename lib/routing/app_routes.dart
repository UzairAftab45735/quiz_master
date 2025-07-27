import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/splash_screen.dart'; // adjust path as needed
import '../screens/main_screen.dart';   // adjust path as needed
import 'app_paths.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: AppPaths.splash,
    routes: [
      GoRoute(
        path: AppPaths.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppPaths.main,
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );
}
