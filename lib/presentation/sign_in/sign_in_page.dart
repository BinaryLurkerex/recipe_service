import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_service/presentation/core/default_gradient.dart';

part 'package:recipe_service/presentation/sign_in/components/gradient_button.dart';
part 'package:recipe_service/presentation/sign_in/components/loading_state.dart';
part 'package:recipe_service/presentation/sign_in/components/log_in_form.dart';
part 'package:recipe_service/presentation/sign_in/components/sign_up_form.dart';

part 'package:recipe_service/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static const route = '/signin';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInForm(),
    );
  }
}
