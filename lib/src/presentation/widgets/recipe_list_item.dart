import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:recipe/src/presentation/styles/app_colors.dart';

class RecipeListItem extends StatelessWidget {
  final Recipe recipe;
  final IconData icon;
  final Function()? onIconPressed;

  const RecipeListItem({
    super.key,
    required this.recipe,
    required this.icon,
    this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92.0,
      child: Stack(
        children: [
          // TODO: fix error drop
          // Image.network(
          //   recipe.image,
          //   fit: BoxFit.fill,
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
                gradient: const LinearGradient(
                  colors: [
                    AppColors.leftLinear,
                    AppColors.rightLinear,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.clamp,
                  stops: [0.3, 0.6],
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
                          Expanded(
                            child: Text(
                              recipe.name,
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: onIconPressed,
                            icon: Icon(
                              icon,
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
