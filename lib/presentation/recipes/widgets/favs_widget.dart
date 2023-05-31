import 'package:flutter/material.dart';
import 'package:recipe_service/presentation/recipes/components/recipe_card.dart';
import 'package:recipe_service/presentation/recipes/components/title_bar.dart';

class FavsWidget extends StatelessWidget {
  const FavsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(
        title: 'Favorites',
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (_, index) {
          return const RecipeCard();
        },
      ),
    );
  }
}
