import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:recipe/src/router.gr.dart';

@RoutePage()
class InitialPage extends StatelessWidget {
  late final AuthBloc authBloc;

  InitialPage({super.key}) {
    authBloc = services<AuthBloc>();
  }

  @override
  Widget build(BuildContext context) {
    authBloc.add(const CheckAuthEvent());

    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        bloc: authBloc,
        listener: (context, state) {
          if (state.message != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.message!,
                ),
              ),
            );
          }

          if (state is UnauthorizedAuthState) {
            AutoRouter.of(context).replace(
              LoginRoute(),
            );
          } else if (state is AuthorizedAuthState) {
            AutoRouter.of(context).replace(
              const HomeRoute(),
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
