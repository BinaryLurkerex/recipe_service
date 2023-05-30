import 'package:flutter/material.dart';
import 'package:recipe/presentation/recipes/components/title_bar.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(
        title: 'Post New Recipe',
      ),
      body: const Placeholder(
        child: Center(
          child: Text(
            'Post New Recipe',
          ),
        ),
      ),
    );
  }
}
