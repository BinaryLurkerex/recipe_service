import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_service/application/auth/auth_bloc.dart';
import 'package:recipe_service/presentation/core/app_text_style.dart';
import 'package:recipe_service/presentation/recipes/components/profile_bar.dart';
import 'package:recipe_service/presentation/recipes/components/recipe_card.dart';
import 'package:recipe_service/presentation/recipes/components/title_bar.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);

    return Scaffold(
      appBar: TitleBar(
        title: authBloc.state.mapOrNull(authenticated: (value) => value.user.name) ?? 'User',
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: _Buttons(),
            ),
          ),
          SliverList.builder(
            itemCount: 20,
            itemBuilder: (_, index) {
              return const RecipeCard();
            },
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileBar(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    //TODO: implement onEditProfile method
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: AppTextStyle.dark().body,
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    //TODO: Open settings
                    // AutoRouter.of(context).push(const SettingsRoute());
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  child: Text(
                    'Settings',
                    style: AppTextStyle.dark().body,
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Posts',
          style: AppTextStyle.dark().display,
        ),
      ],
    );
  }
}
