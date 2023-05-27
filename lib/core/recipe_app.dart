import 'package:flutter/material.dart';
import 'package:recipe/src/presentation/pages/home_page.dart';
import 'package:recipe/src/presentation/pages/initial_page.dart';
import 'package:recipe/src/presentation/pages/login_page.dart';
import 'package:recipe/src/presentation/pages/not_found.dart';

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
      initialRoute: InitialPage.route,
      onGenerateRoute: _onGenerateRoute,
    );
  }

  Route? _onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {
          case InitialPage.route:
            return const InitialPage();

          case LoginPage.route:
            return const LoginPage();

          case HomePage.route:
            return const HomePage();
        }

        return const NotFoundPage();
      },
    );
  }
}
