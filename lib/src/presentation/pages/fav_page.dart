import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/presentation/widgets/app_nav_bar.dart';
import 'package:recipe/src/presentation/widgets/recipe_list_item.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  static const route = '/bookmarks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(92.0),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
          ),
          child: const Text(
            'Bookmarks',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
        ),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(index.toString()),
              onDismissed: (direction) {},
              child: const Padding(
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
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const AppNavBar(),
    );
  }
}
