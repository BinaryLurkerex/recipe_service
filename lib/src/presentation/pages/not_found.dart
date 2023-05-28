import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:recipe/src/presentation/styles/app_colors.dart';

@RoutePage()
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

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
