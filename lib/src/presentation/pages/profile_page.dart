import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/presentation/bloc/profile/profile_bloc.dart';
import 'package:recipe/src/presentation/widgets/recipe_list_item.dart';
import 'package:recipe/src/presentation/widgets/app_nav_bar.dart';
import 'package:recipe/src/presentation/widgets/profile_header.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  late final ProfileBloc profileBloc;

  ProfilePage({super.key}) {
    profileBloc = services<ProfileBloc>();
  }

  @override
  Widget build(BuildContext context) {
    profileBloc.add(const RefreshProfileEvent());

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(92.0),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              Icon(
                Icons.settings_rounded,
                color: Colors.black87,
              )
            ],
          ),
        ),
      ),
      body: Scaffold(
        body: BlocConsumer<ProfileBloc, ProfileState>(
          bloc: profileBloc,
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
          },
          builder: (context, state) {
            if (state is UserProfileState) {
              return Column(
                children: [
                  ProfileHeader(
                    user: state.user,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(
                      left: 64.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: const Text(
                      'Your Recipes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(
                            left: 32.0,
                            right: 32.0,
                            bottom: 16.0,
                          ),
                          child: RecipeListItem(
                            recipe: Recipe(
                              name: 'fake-name',
                              image: 'fake-image',
                              ownerID: 'fake-ownerID',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }

            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 1.0,
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const AppNavBar(),
    );
  }
}
