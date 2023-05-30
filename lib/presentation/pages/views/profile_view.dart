import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/infrastucture/core/injector.dart';
import 'package:recipe/presentation/bloc/profile_bloc.dart';
import 'package:recipe/presentation/widgets/profile_header.dart';

class ProfileView extends StatelessWidget {
  late final ProfileBloc profileBloc;

  ProfileView({super.key}) {
    profileBloc = getIt<ProfileBloc>();
    profileBloc.add(const ProfileEvent.refresh());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        bloc: profileBloc,
        builder: (context, state) {
          return state.map(
            loading: (state) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1.0,
                ),
              );
            },
            user: (state) => _ProfilePageData(state),
          );
        },
      ),
    );
  }
}

class _ProfilePageData extends StatelessWidget {
  final UserProfileState state;

  const _ProfilePageData(this.state);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(
          user: state.user,
        ),
        const Divider(
          indent: 64.0,
          endIndent: 64.0,
        ),
        const Expanded(
          child: Center(
            child: Text(
              'There`s no actions for Ghost user',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
          ),
        ),
        // Container(
        //   alignment: Alignment.centerLeft,
        //   padding: const EdgeInsets.only(
        //     left: 64.0,
        //     top: 8.0,
        //     bottom: 8.0,
        //   ),
        //   child: const Text(
        //     'Your Recipes',
        //     style: TextStyle(
        //       fontSize: 20,
        //       fontWeight: FontWeight.w500,
        //       color: Colors.black87,
        //     ),
        //   ),
        // ),
        // Expanded(
        //   child: ListView.builder(
        //     itemCount: 20,
        //     itemBuilder: (context, index) {
        //       return const Padding(
        //         padding: EdgeInsets.only(
        //           left: 32.0,
        //           right: 32.0,
        //           bottom: 16.0,
        //         ),
        //         child: RecipeListItem(
        //           recipe: Recipe(
        //             name: 'fake-name',
        //             image: 'fake-image',
        //             ownerID: 'fake-ownerID',
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
