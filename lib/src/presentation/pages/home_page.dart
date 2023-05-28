import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/presentation/widgets/app_header_bar.dart';
import 'package:recipe/src/presentation/widgets/app_nav_bar.dart';
import 'package:recipe/src/presentation/widgets/recipe_card.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeaderBar(
        title: 'Recipes',
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: _HomePageScroll(
          recipes: localRecipes,
        ),
      ),
      bottomNavigationBar: const AppNavBar(),
    );
  }
}

class _HomePageScroll extends StatefulWidget {
  final List<Recipe> recipes;

  const _HomePageScroll({
    required this.recipes,
  });

  @override
  State<_HomePageScroll> createState() => _HomePageScrollState();
}

class _HomePageScrollState extends State<_HomePageScroll> {
  final PageController controller = PageController(viewportFraction: 0.75);

  int currentScroll = 0;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      int position = controller.page!.round();
      if (currentScroll != position) {
        {
          setState(() {
            currentScroll = position;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      padEnds: false,
      controller: controller,
      itemCount: widget.recipes.length,
      // physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        bool active = index == currentScroll;

        return Opacity(
          opacity: currentScroll == index ? 1.0 : 0.75,
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
