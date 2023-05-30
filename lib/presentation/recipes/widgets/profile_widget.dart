import 'package:flutter/material.dart';
import 'package:recipe/presentation/recipes/components/title_bar.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(
        title: 'Favorites',
      ),
      body: const Placeholder(
        child: Center(
          child: Text(
            'Favorites',
          ),
        ),
      ),
    );
  }
}
