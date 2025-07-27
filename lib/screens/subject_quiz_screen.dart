import 'package:flutter/material.dart';
import '../widgets/quiz_card_widget.dart';  // You can reuse or make vertical variant
import '../core/app_styles.dart';

class SubjectQuizScreen extends StatelessWidget {
  final String subject;
  final List<Map<String, dynamic>> quizzes;
  final Color color;

  const SubjectQuizScreen({
    super.key,
    required this.subject,
    required this.quizzes,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subject),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: quizzes.length,
        itemBuilder: (context, index) {
          final quiz = quizzes[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(quiz['icon'], color: Colors.white, size: 30),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quiz['title'],
                      style: AppStyles.headingDark.copyWith(fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${quiz['questions']} Questions',
                      style: AppStyles.subheadingDark.copyWith(fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
