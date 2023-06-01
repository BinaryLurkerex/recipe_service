import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_service/application/auth/auth_bloc.dart';
import 'package:recipe_service/presentation/core/default_gradient.dart';
import 'package:recipe_service/presentation/recipes/recipes_page.dart';
import 'package:recipe_service/presentation/sign_in/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: BlocProvider.of<AuthBloc>(context),
      builder: (context, state) {
        return state.map(
          initial: (_) => _Loading(),
          unauthenticated: (_) => const SignInPage(),
          authenticated: (_) => const RecipePage(),
        );
      },
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: DefaultGradient(context),
        ),
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 1.0,
          ),
        ),
      ),
    );
  }
}
