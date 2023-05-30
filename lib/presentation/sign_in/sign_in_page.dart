import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/application/auth/sign_in/sign_in_bloc.dart';
import 'package:recipe/infrastucture/core/injector.dart';
import 'package:recipe/presentation/sign_in/widgets/sign_in_form.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}
