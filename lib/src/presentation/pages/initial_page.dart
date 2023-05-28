import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/presentation/bloc/auth_bloc.dart';
import 'package:recipe/src/router.gr.dart';

@RoutePage()
class InitialPage extends StatelessWidget {
  late final AuthBloc authBloc;

  InitialPage({super.key}) {
    authBloc = services<AuthBloc>();
    authBloc.add(const AuthEvent.refresh());
  }

  void onAuthBlocStateChange(BuildContext context, AuthState state) {
    state.map(
      initial: (state) => null,
      unauthorized: (state) {
        AutoRouter.of(context).replace(
          LoginRoute(),
        );
      },
      authorized: (state) {
        AutoRouter.of(context).replace(
          const HomeRoute(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        bloc: authBloc,
        listener: onAuthBlocStateChange,
        // listener: (_, state) => onAuthBlocStateChange(context, state),
        child: const Center(
          child: CircularProgressIndicator(
            strokeWidth: 1.0,
          ),
        ),
      ),
    );
  }
}
