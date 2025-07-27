import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../core/app_styles.dart';

class QuizCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final int questionCount;
  final Color color;

  const QuizCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.questionCount,
    required this.color, // Add this
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Top 70% – Icon with colored background and border
          Container(
            height: 120, // 70% of 160
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border(
                top: BorderSide(color: Colors.black12),
                left: BorderSide(color: Colors.black12),
                right: BorderSide(color: Colors.black12),
              ),
            ),
            child: Center(
              child: Icon(icon, color: AppColors.white, size: 36),
            ),
          ),

          // Bottom 30% – Title and Questions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: SizedBox(
              width: double.infinity,  // 🔥 This forces it to take full width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppStyles.headingDark.copyWith(fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$questionCount Questions',
                    style: AppStyles.subheadingDark.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
