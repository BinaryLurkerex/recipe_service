import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/presentation/styles/app_colors.dart';

class RecipeCard extends StatelessWidget {
  final bool? active;
  final int? index;
  final Recipe? recipe;

  const RecipeCard({
    Key? key,
    this.active,
    this.index,
    this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 16.0 : 0.0;
    final double offset = active! ? 4.0 : 0.0;
    final double top = active! ? 0.0 : 42.0;
    final double left = active! ? 32.0 : 0.0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        left: left,
        right: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.1),
            blurRadius: blur,
            offset: Offset(0.0, offset),
          )
        ],
      ),
      child: Stack(
        children: [
          Image.network(
            recipe!.image,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                'assets/images/image-not-available.png',
                color: Colors.black87,
              );
            },
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.0),
              gradient: AppColors.defaultGradient,
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              height: 82.0,
              padding: const EdgeInsets.all(
                16.0,
              ),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32.0),
                    bottomRight: Radius.circular(32.0),
                  )),
              child: Text(
                recipe!.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 82.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                height: 24.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Text(
                  'Recipe',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 82.0,
            right: 0.0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Icon(
                Icons.bookmark_outline_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
