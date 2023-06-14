part of 'package:recipe_service/presentation/recipes/recipes_page.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Username'),
        // title: Text(authBloc.state.mapOrNull(authenticated: (value) => value.user.name) ?? 'User'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: CustomScrollView(
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
                return const _RecipeCard();
              },
            ),
          ],
        ),
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
        const _ProfileBar(),
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
        ),
        Text(
          'Posts',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 8.0),
      ],
    );
  }
}

class _ProfileBar extends StatelessWidget {
  const _ProfileBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FittedBox(
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _ProfilePin(
                  value: '2',
                  title: 'Posts',
                  padding: EdgeInsets.all(8.0),
                ),
              ),
              Expanded(
                child: _ProfilePin(
                  value: '2',
                  title: 'Followers',
                  padding: EdgeInsets.all(8.0),
                ),
              ),
              Expanded(
                child: _ProfilePin(
                  value: '2',
                  title: 'Following',
                  padding: EdgeInsets.all(8.0),
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
