import 'package:flutter/material.dart';
import 'package:recipe_service/presentation/core/app_text_style.dart';
import 'package:recipe_service/presentation/recipes/components/profile_bar.dart';
import 'package:recipe_service/presentation/recipes/components/recipe_card.dart';
import 'package:recipe_service/presentation/recipes/components/title_bar.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(
        title: '{username}',
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
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
                              //TODO: implement onOpenSettings method
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
              ),
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
