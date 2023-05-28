import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/presentation/widgets/recipe_card.dart';

class RecipeScroll extends StatefulWidget {
  final List<Recipe> recipes;

  const RecipeScroll({
    required this.recipes,
    super.key,
  });

  @override
  State<RecipeScroll> createState() => _RecipeScrollState();
}

class _RecipeScrollState extends State<RecipeScroll> {
  final PageController pageController = PageController(viewportFraction: 0.75);

  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentPage != position) {
        {
          setState(() {
            currentPage = position;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      padEnds: false,
      controller: pageController,
      itemCount: widget.recipes.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        bool active = index == currentPage;
        return Opacity(
          opacity: currentPage == index ? 1.0 : 0.5,
          child: RecipeCard(
            active: active,
            index: index,
            recipe: widget.recipes[index],
          ),
        );
      },
    );
  }
}
