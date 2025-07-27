class AppConfig {
  static const String appName = 'QuizMaster';
  static const String appSlogan = 'Learn. Play. Master.';

  // Timings
  static const Duration splashDelay = Duration(seconds: 2);
  static const Duration questionTimeLimit = Duration(seconds: 15);

  // Quiz Settings
  static const int questionsPerQuiz = 15;

// Future optional configs
// static const bool enableDarkModeByDefault = true;
// static const String apiBaseUrl = 'https://api.quizmaster.com';
}
