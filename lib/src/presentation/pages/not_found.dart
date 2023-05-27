import 'package:flutter/material.dart';
import 'package:recipe/src/presentation/styles/app_colors.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  static const route = '/404';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Unknown Page - 404',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.homeTitleColor,
          ),
        ),
      ),
    );
  }
}
