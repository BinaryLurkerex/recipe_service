import 'package:flutter/material.dart';

class RecipeNavBar extends StatelessWidget {
  const RecipeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home_filled,
            color: Colors.black87,
          ),
          Icon(
            Icons.bookmark_rounded,
            color: Colors.black87,
          ),
          Icon(
            Icons.person_rounded,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }
}
