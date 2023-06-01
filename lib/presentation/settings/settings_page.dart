import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_service/application/auth/auth_bloc.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: SafeArea(
          child: ListView.custom(
            reverse: true,
            childrenDelegate: SliverChildListDelegate.fixed(
              [
                TextButton(
                  onPressed: () {
                    authBloc.add(const AuthEvent.signOut());
                  },
                  child: const Text(
                    'Sign Out',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
