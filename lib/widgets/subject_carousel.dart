import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class SubjectCarousel extends StatefulWidget {
  const SubjectCarousel({super.key});

  @override
  State<SubjectCarousel> createState() => _SubjectCarouselState();
}

class _SubjectCarouselState extends State<SubjectCarousel> {
  final List<String> subjects = [
    'All',
    'Mathematics',
    'English',
    'Science',
    'General Knowledge',
    'Social Studies',
    'Computer Science'
  ];

  late final PageController _controller;
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    // Ensure 'All' starts centered — multiple of subjects.length
    _currentPage = subjects.length * 1000;
    _controller = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.35, // adjusts visible width
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int _getActualIndex(int page) {
    return page % subjects.length;
  }

  void _animateToPage(int page) {
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: PageView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          final actualIndex = _getActualIndex(index);
          final isSelected = index == _currentPage;

          return GestureDetector(
            onTap: () => _animateToPage(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 6, vertical: isSelected ? 0 : 6),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.lightGrey,
                borderRadius: BorderRadius.circular(20),
                boxShadow: isSelected
                    ? [
                  BoxShadow(
                    color: AppColors.primary.withOpacity(0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ]
                    : [],
              ),
              child: Text(
                subjects[actualIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isSelected ? AppColors.white : AppColors.black,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: isSelected ? 16 : 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
