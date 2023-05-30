import 'package:flutter/material.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/presentation/bloc/bookmarks_bloc.dart';
import 'package:recipe/src/presentation/styles/app_colors.dart';

class RecipeCard extends StatelessWidget {
  final bool isActive;
  final RecipeDEPRECATED recipe;

  const RecipeCard({
    Key? key,
    required this.isActive,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double blur = isActive ? 16.0 : 0.0;
    final double offset = isActive ? 4.0 : 0.0;
    final double top = isActive ? 0.0 : 42.0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        left: 16.0,
        right: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.1),
            offset: Offset(0.0, offset),
            blurRadius: blur,
          )
        ],
      ),
      child: Opacity(
        opacity: isActive ? 1.0 : 0.75,
        child: Stack(
          children: [
            Image.network(
              recipe.image,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox();
              },
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                gradient: AppColors.defaultGradient,
              ),
            ),
            Positioned(
              bottom: 82.0,
              left: 8.0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.bookmark_outline_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      services<BookmarksBloc>().add(AddBookmarksEvent(recipe: recipe));
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    height: 32.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                    ),
                    child: Text(
                      'Recipe by ${recipe.owner}',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                height: 82.0,
                padding: const EdgeInsets.all(
                  16.0,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32.0),
                    bottomRight: Radius.circular(32.0),
                  ),
                ),
                child: Text(
                  recipe.name,
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
            // Positioned(
            //   bottom: 82.0,
            //   right: 32.0,
            //   child: IconButton(
            //     icon: const Icon(
            //       Icons.bookmark_outline_rounded,
            //       color: Colors.white,
            //     ),
            //     onPressed: () {
            //       services<BookmarksBloc>().add(AddBookmarksEvent(recipe: recipe));
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
