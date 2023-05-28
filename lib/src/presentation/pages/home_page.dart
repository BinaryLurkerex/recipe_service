import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/presentation/widgets/app_nav_bar.dart';
import 'package:recipe/src/presentation/widgets/recipe_cards_scroll.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recipes',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              Icon(
                Icons.filter_list_rounded,
                color: Colors.black87,
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: RecipeCardsScroll(
          recipes: localRecipes,
        ),
      ),
      bottomNavigationBar: const AppNavBar(),
    );
  }
}
