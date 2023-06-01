import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_service/application/auth/auth_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const route = '/settings';

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
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
                    Navigator.pop(context);
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
