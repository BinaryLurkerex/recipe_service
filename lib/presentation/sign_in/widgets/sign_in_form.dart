part of 'package:recipe_service/presentation/sign_in/sign_in_page.dart';

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
                Navigator.of(context).pop();
              },
            ),
          },
        );
      },
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Expanded(child: _Content()),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(_loginSvgPath),
        Column(
          children: [
            Text(
              'Recipes',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black),
            ),
            Text(
              'By mfua Students',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black),
            ),
          ],
        )
      ],
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
        children: [
          FilledButton(
            onPressed: onSignUpPressed,
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 4.0),
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
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
