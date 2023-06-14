import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_service/infrastucture/core/injector.dart';
import 'package:recipe_service/presentation/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.prod);
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Service',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        fontFamily: 'SF-Pro',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFF6925C),
          secondary: const Color(0xFFF37552),
          background: const Color(0xFFE7EEFB),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
