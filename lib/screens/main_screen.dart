import 'package:flutter/material.dart';
import 'package:quiz_master/screens/subject_quiz_screen.dart';
import 'package:quiz_master/widgets/quiz_card_widget.dart';
import 'package:quiz_master/widgets/search_bar_widget.dart';
import '../core/app_colors.dart';
import '../core/app_config.dart';
import '../core/app_styles.dart';
import '../core/data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final List<String> subjects = const [
    'Mathematics',
    'English',
    'Science',
    'General Knowledge',
    'Social Studies',
    'Computer Science'
  ];

  // ✅ Sample quiz data per subject (mock, to be replaced later)


  @override
  Widget build(BuildContext context) {
    final dataProvider = data();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ✅ Search bar
              SearchBarWidget(),

              // ✅ Explore Label
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Explore Subjects',
                  style: AppStyles.headingDark.copyWith(fontSize: 24),
                ),
              ),

              // ✅ Horizontal Subject Scroll
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ...subjects.map((subject) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SubjectQuizScreen(
                                subject: subject,
                                quizzes: dataProvider.subjectQuizData[subject]!,
                                color: dataProvider.subjectColors[subject]!,  // Pass color here
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              subject,
                              style: const TextStyle(
                                color: AppColors.black87,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // ✅ Subject Sections (Mathematics, English, etc.)
              ...subjects.map((subject) {
                final quizzes = dataProvider.subjectQuizData[subject]!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 🔹 Subject Label
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Text(
                        subject,
                        style: AppStyles.headingDark.copyWith(fontSize: 20),
                      ),
                    ),

                    // 🔹 Horizontal Quiz Cards
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: quizzes.length,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        itemBuilder: (context, index) {
                          final quiz = quizzes[index];
                          final color = dataProvider.subjectColors[subject] ?? Colors.grey;
                          return QuizCardWidget(
                            icon: quiz['icon'],
                            title: quiz['title'],
                            questionCount: quiz['questions'],
                            //color: dataProvider.subjectColors[subject]!, // Pass subject-specific color
                            color: color,
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 20), // Spacing after each subject section
                  ],
                );
              }).toList(),
            ],
          ),
        ),
      ),

      // ✅ Bottom Navigation Bar Added
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Home selected by default
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.black87,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Results',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Activity',
          ),
        ],
      ),
    );
  }
}
