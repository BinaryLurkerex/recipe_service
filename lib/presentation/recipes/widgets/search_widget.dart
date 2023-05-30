import 'package:flutter/material.dart';
import 'package:recipe/presentation/core/style/app_text_style.dart';
import 'package:recipe/presentation/recipes/components/title_bar.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(
        title: 'Search',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ingredient',
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'There`s no ingredients yet',
                  style: AppTextStyle.dark().headline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
