part of '../sign_in_page.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final signInBloc = BlocProvider.of<SignInBloc>(context);

    return BlocListener<SignInBloc, SignInState>(
      bloc: signInBloc,
      listener: (context, state) {
        /// Send [AuthEvent.authCheck] after succesful complete sign in
        state.authFailureOrSuccessOption.map(
          (failureOrUnit) => {
            failureOrUnit.fold(
              (failure) => null,
              (unit) {
                BlocProvider.of<AuthBloc>(context).add(
                  const AuthEvent.authCheck(),
                );
              },
            ),
          },
        );
      },
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _Content(),
              _OptionButtons(
                onSignUpPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => _SignUpForm(
                        signInBloc: signInBloc,
                      ),
                    ),
                  );
                },
                onLogInPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => _LogInForm(
                        signInBloc: signInBloc,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  static const _loginSvgPath = 'assets/svg/recipe-login.svg';

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(_loginSvgPath),
          const Text(
            'Recipes',
            textAlign: TextAlign.center,
          ),
          const Text(
            'By mof mfua Students',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _OptionButtons extends StatelessWidget {
  final Function()? onSignUpPressed;
  final Function()? onLogInPressed;

  const _OptionButtons({
    this.onSignUpPressed,
    this.onLogInPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      constraints: const BoxConstraints(
        maxWidth: 320.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _GradientButton(
            onPressed: onSignUpPressed,
            gradient: DefaultGradient(context),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Sign Up',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          FilledButton(
            onPressed: onLogInPressed,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Log In',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
