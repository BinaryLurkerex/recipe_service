import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:recipe/src/presentation/pages/home_page.dart';
import 'package:recipe/src/presentation/pages/login_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = services<AuthBloc>();
    authBloc.add(const CheckAuthEvent());

    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        bloc: authBloc,
        listener: (context, state) {
          if (state is UnauthorizedAuthState) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              LoginPage.route,
              (route) => false,
            );
          } else if (state is AuthorizedAuthState) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              HomePage.route,
              (route) => false,
            );
          }
        },
        child: const Center(
          child: CircularProgressIndicator(
            strokeWidth: 1.0,
          ),
        ),
      ),
    );
  }
}
