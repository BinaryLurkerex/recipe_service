import 'package:flutter/material.dart';
import 'package:recipe/app_router.dart';
import 'package:recipe/infrastucture/core/injector.dart';

void main() {
  configureDependencies();
  runApp(const RecipeApp());
}

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
          primary: const Color(0xFFF6925C),
          secondary: const Color(0xFFF37552),
          background: const Color(0xFFE7EEFB),
        ),
      ),
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
