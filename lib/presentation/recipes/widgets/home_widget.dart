import 'package:flutter/material.dart';
import 'package:recipe_service/presentation/recipes/components/recipe_card.dart';
import 'package:recipe_service/presentation/recipes/components/title_bar.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(
        title: 'Fruit Service',
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const RecipeCard();
        },
      ),
    );
  }
}
