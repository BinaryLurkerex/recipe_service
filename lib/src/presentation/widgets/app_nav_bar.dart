import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:recipe/src/router.gr.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    void onOpenHomePageEvent() {
      AutoRouter.of(context).replace(
        const HomeRoute(),
      );
    }

    void onOpenFavPageEvent() {
      AutoRouter.of(context).replace(
        BookmarksRoute(),
      );
    }

    void onOpenProfilePageEvent() {
      AutoRouter.of(context).replace(
        ProfileRoute(),
      );
    }

    return Hero(
      tag: 'nav-bar',
      child: Container(
        height: 92.0,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 32.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home_filled,
              ),
              color: Colors.black87,
              onPressed: onOpenHomePageEvent,
            ),
            IconButton(
              icon: const Icon(
                Icons.bookmark_rounded,
              ),
              color: Colors.black87,
              onPressed: onOpenFavPageEvent,
            ),
            IconButton(
              icon: const Icon(
                Icons.person_rounded,
              ),
              color: Colors.black87,
              onPressed: onOpenProfilePageEvent,
            ),
          ],
        ),
      ),
    );
  }
}
