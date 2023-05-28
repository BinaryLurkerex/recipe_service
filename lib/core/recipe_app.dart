import 'package:flutter/material.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/router.dart';
import 'package:recipe/src/presentation/styles/app_colors.dart';

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Recipe Service',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        fontFamily: 'SFProText',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.secondaryColor,
          background: AppColors.backgroundColor,
        ),
      ),
      routerConfig: services<AppRouter>().config(),
    );
  }
}
