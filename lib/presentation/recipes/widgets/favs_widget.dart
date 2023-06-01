part of 'package:recipe_service/presentation/recipes/recipes_page.dart';

class FavsWidget extends StatelessWidget {
  const FavsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Favorites'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (_, index) {
            return const _RecipeCard();
          },
        ),
      ),
    );
  }
}
