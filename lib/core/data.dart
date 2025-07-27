import 'package:flutter/material.dart';

class data {
  Map<String, List<Map<String, dynamic>>> get subjectQuizData =>
    {
      'Mathematics': [
        {'title': 'Algebra Basics', 'questions': 5, 'icon': Icons.calculate},
        {'title': 'Geometry Fun', 'questions': 4, 'icon': Icons.architecture},
        {'title': 'Math Challenge', 'questions': 6, 'icon': Icons.percent},
        {'title': 'Geometry Fun', 'questions': 4, 'icon': Icons.architecture},
        {'title': 'Math Challenge', 'questions': 6, 'icon': Icons.percent},
      ],
      'English': [
        {'title': 'Grammar Check', 'questions': 3, 'icon': Icons.menu_book},
        {'title': 'Vocabulary', 'questions': 4, 'icon': Icons.translate},
        {'title': 'Reading Fun', 'questions': 5, 'icon': Icons.book},
        {'title': 'Reading Fun', 'questions': 5, 'icon': Icons.book},
      ],
      'Science': [
        {'title': 'Physics Intro', 'questions': 4, 'icon': Icons.science},
        {'title': 'Biology Basics', 'questions': 3, 'icon': Icons.biotech},
        {
          'title': 'Chemistry Lab',
          'questions': 5,
          'icon': Icons.emoji_objects
        },
      ],
      'General Knowledge': [
        {'title': 'World Facts', 'questions': 4, 'icon': Icons.public},
        {'title': 'Current Affairs', 'questions': 5, 'icon': Icons.newspaper},
        {'title': 'Quiz Time', 'questions': 3, 'icon': Icons.quiz},
      ],
      'Social Studies': [
        {'title': 'History', 'questions': 4, 'icon': Icons.history_edu},
        {'title': 'Civics', 'questions': 3, 'icon': Icons.people},
        {'title': 'Geography', 'questions': 4, 'icon': Icons.map},
      ],
      'Computer Science': [
        {'title': 'Programming Basics', 'questions': 4, 'icon': Icons.code},
        {'title': 'AI & ML', 'questions': 3, 'icon': Icons.memory},
        {'title': 'Cyber Security', 'questions': 5, 'icon': Icons.security},
      ],
    };

  final Map<String, Color> subjectColors = {
    'Mathematics': Colors.blueAccent,
    'English': Colors.orangeAccent,
    'Science': Colors.green,
    'General Knowledge': Colors.purpleAccent,
    'Social Studies': Colors.teal,
    'Computer Science': Colors.redAccent,
  };
}
