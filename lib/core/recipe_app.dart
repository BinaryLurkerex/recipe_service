import 'package:flutter/material.dart';
import 'package:recipe/src/presentation/pages/login_page.dart';

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        fontFamily: 'SFProText',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.orange,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
