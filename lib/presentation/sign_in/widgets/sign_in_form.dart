import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_service/application/auth/sign_in/sign_in_bloc.dart';
import 'package:recipe_service/presentation/core/app_text_style.dart';
import 'package:recipe_service/presentation/core/default_gradient.dart';
import 'package:recipe_service/presentation/sign_in/components/gradient_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: _Body(),
          ),
          _Buttons()
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 240,
            child: SvgPicture.asset('assets/svg/recipe-login.svg'),
          ),
          Text(
            'Recipe Service',
            textAlign: TextAlign.center,
            style: AppTextStyle.dark().display,
          ),
          Text(
            'By mof mfua Students',
            textAlign: TextAlign.center,
            style: AppTextStyle.dark().body,
          ),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SignInBloc>(context);

    return Container(
      alignment: Alignment.bottomCenter,
      constraints: const BoxConstraints(
        maxWidth: 320.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GradientButton(
            onPressed: () {
              AutoRouter.of(context).pushWidget(
                _SignUpForm(bloc),
              );
            },
            gradient: DefaultGradient(context),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: AppTextStyle.light().body,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          FilledButton(
            onPressed: () {
              AutoRouter.of(context).pushWidget(
                _LoginForm(bloc),
              );
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.white,
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Log In',
                textAlign: TextAlign.center,
                style: AppTextStyle.dark().body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final SignInBloc bloc;

  const _LoginForm(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log In',
          style: AppTextStyle.dark().display,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: BlocBuilder<SignInBloc, SignInState>(
            bloc: bloc,
            builder: (context, state) {
              debugPrint(state.emailAddress.value.toString());
              debugPrint(state.password.value.toString());

              return Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    TextFormField(
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        hintText: 'Email',
                        // errorText: state.password.value.fold(
                        //   (failure) => failure.maybeMap(
                        //     invalidEmail: (value) => 'Invalid Password',
                        //     orElse: () => null,
                        //   ),
                        //   (_) => '',
                        // ),
                      ),
                      onChanged: (value) {
                        bloc.add(
                          SignInEvent.emailChange(value),
                        );
                      },
                    ),
                    TextFormField(
                      autocorrect: false,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        hintText: 'Password',
                        // errorText: state.password.value.fold(
                        //   (failure) => failure.maybeMap(
                        //     invalidEmail: (value) => 'Invalid Password',
                        //     orElse: () => null,
                        //   ),
                        //   (_) => null,
                        // ),
                      ),
                      obscureText: true,
                      validator: state.password.value.fold(
                        (failure) => failure.maybeMap(
                          invalidEmail: (value) => ((_) => 'Invalid Password'),
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                      onChanged: (value) {
                        bloc.add(
                          SignInEvent.passwordChange(value),
                        );
                      },
                    ),
                    const Spacer(),
                    GradientButton(
                      onPressed: () {
                        bloc.add(
                          const SignInEvent.signInWithEmailAndPassword(),
                        );
                      },
                      gradient: DefaultGradient(context),
                      child: Text(
                        'Log In',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.light().body,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    FilledButton(
                      onPressed: () {
                        bloc.add(
                          const SignInEvent.signInWithGoogle(),
                        );
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Sign in with Google',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.dark().body,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _SignUpForm extends StatelessWidget {
  final SignInBloc bloc;

  const _SignUpForm(this.bloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log In',
          style: AppTextStyle.dark().display,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: BlocBuilder<SignInBloc, SignInState>(
            bloc: bloc,
            builder: (context, state) {
              debugPrint(state.emailAddress.value.toString());
              debugPrint(state.password.value.toString());

              return Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    TextFormField(
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        hintText: 'Email',
                      ),
                      onChanged: (value) {
                        bloc.add(
                          SignInEvent.emailChange(value),
                        );
                      },
                    ),
                    TextFormField(
                      autocorrect: false,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        hintText: 'Password',
                      ),
                      obscureText: true,
                      validator: state.password.value.fold(
                        (failure) => failure.maybeMap(
                          invalidEmail: (value) => ((_) => 'Invalid Password'),
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                      onChanged: (value) {
                        bloc.add(
                          SignInEvent.passwordChange(value),
                        );
                      },
                    ),
                    const Spacer(),
                    GradientButton(
                      onPressed: () {
                        bloc.add(
                          const SignInEvent.singUpWithEmailAndPassword(),
                        );
                      },
                      gradient: DefaultGradient(context),
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.light().body,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    FilledButton(
                      onPressed: () {
                        bloc.add(
                          const SignInEvent.signInWithGoogle(),
                        );
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Sign in with Google',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.dark().body,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
