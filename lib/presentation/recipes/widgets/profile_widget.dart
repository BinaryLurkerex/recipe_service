// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'package:recipe_service/presentation/recipes/recipes_page.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<GlobalBloc>(context);

    return BlocBuilder<GlobalBloc, GlobalState>(
      bloc: bloc,
      builder: (context, state) {
        return state.map(
          initial: (value) => const LoadingCard(),
          data: (value) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: false,
                title: Text(value.profile.username),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              ),
              body: SafeArea(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: _ProfileBar(
                          avatar: value.profile.avatarUrl,
                          posts: value.profile.posts.length,
                          followers: value.profile.followers,
                          following: value.profile.following,
                        ),
                      ),
                    ),
                    // const SliverToBoxAdapter(
                    //   child: Padding(
                    //     padding: EdgeInsets.symmetric(horizontal: 16.0),
                    //     child: _Buttons(),
                    //   ),
                    // ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Posts',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                    // if (value.profilePosts.size == 0)
                    //   Padding(
                    //     padding: const EdgeInsets.all(32.0),
                    //     child: Center(
                    //       child: Text(
                    //         'There`s no posts yet',
                    //         style: Theme.of(context).textTheme.labelLarge,
                    //       ),
                    //     ),
                    //   ),
                    // if (value.profilePosts.size > 0)
                    SliverList.builder(
                      itemCount: value.profile.posts.length,
                      itemBuilder: (_, index) {
                        return _RecipeCard(
                          profile: value.profile,
                          post: value.profile.posts.elementAt(index),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const SettingsPage(),
                  ),
                );
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.white,
                ),
              ),
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileBar extends StatelessWidget {
  final String avatar;
  final int posts;
  final int followers;
  final int following;

  const _ProfileBar({
    required this.avatar,
    required this.posts,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FittedBox(
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              backgroundImage: NetworkImage(avatar),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _ProfilePin(
                  value: '$posts',
                  title: 'Posts',
                  padding: const EdgeInsets.all(8.0),
                ),
              ),
              Expanded(
                child: _ProfilePin(
                  value: '$followers',
                  title: 'Followers',
                  padding: const EdgeInsets.all(8.0),
                ),
              ),
              Expanded(
                child: _ProfilePin(
                  value: '$following',
                  title: 'Following',
                  padding: const EdgeInsets.all(8.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProfilePin extends StatelessWidget {
  final String value;
  final String title;
  final EdgeInsets padding;

  const _ProfilePin({
    required this.value,
    required this.title,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
