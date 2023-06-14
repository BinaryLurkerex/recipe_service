import 'package:flutter/material.dart';
import 'package:recipe_service/presentation/recipes/recipes_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<AuthBloc, AuthState>(
    //   bloc: BlocProvider.of<AuthBloc>(context),
    //   builder: (context, state) {
    //     return state.map(
    //       initial: (_) => _Loading(),
    //       unauthenticated: (_) => const SignInPage(),
    //       authenticated: (_) => const RecipePage(),
    //     );
    //   },
    // );

    return const RecipePage();
  }
}
