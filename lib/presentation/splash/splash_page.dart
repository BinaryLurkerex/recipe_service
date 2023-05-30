import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/app_router.gr.dart';
import 'package:recipe/application/auth/auth_bloc.dart';
import 'package:recipe/presentation/core/default_gradient.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: BlocProvider.of<AuthBloc>(context),
      listener: (context, state) {
        state.mapOrNull(
          authenticated: (_) => AutoRouter.of(context).pushAndPopUntil(
            const RecipeRoute(),
            predicate: (_) => false,
          ),
          unauthenticated: (_) => AutoRouter.of(context).pushAndPopUntil(
            const SignInRoute(),
            predicate: (_) => false,
          ),
        );
      },
      child: _Loading(),
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
