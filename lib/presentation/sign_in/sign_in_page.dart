import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_service/application/auth/auth_bloc.dart';
import 'package:recipe_service/application/auth/sign_in/sign_in_bloc.dart';
import 'package:recipe_service/infrastucture/core/injector.dart';
import 'package:recipe_service/presentation/core/default_gradient.dart';

//! COMPONENTS
part './components/gradient_button.dart';
part './components/loading_state.dart';
part './components/log_in_form.dart';
part './components/sign_up_form.dart';

//! WIDGETS
part './widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static const route = '/signin';

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
