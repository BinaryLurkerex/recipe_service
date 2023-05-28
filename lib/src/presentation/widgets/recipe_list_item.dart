import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/recipe.dart';

class RecipeListItem extends StatelessWidget {
  final Recipe recipe;

  const RecipeListItem({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92.0,
      child: Stack(
        children: [
          // Image.network(
          //   recipe.image,
          //   fit: BoxFit.fill,
          //   //TODO: fix error drop
          //   errorBuilder: (context, error, stackTrace) {
          //     return Image.asset(
          //       'assets/images/image-not-available.png',
          //       color: Colors.black87,
          //     );
          //   },
          // ),
          SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.secondary.withOpacity(0.75),
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  tileMode: TileMode.clamp,
                  stops: const [0.3, 0.6],
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.bookmark_outline_rounded,
                              ),
                              Text(
                                '2',
                                textAlign: TextAlign.right,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            recipe.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
