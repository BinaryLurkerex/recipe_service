import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/presentation/core/app_text_style.dart';
import 'package:recipe/presentation/recipes/components/title_bar.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleBar(
        title: 'Post New Recipe',
        actions: [
          InkWell(
            borderRadius: BorderRadius.circular(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Continue',
                style: AppTextStyle.dark().headline.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            onTap: () {
              //TODO: implement onDoneMethod
            },
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _PostName(),
          ),
          SliverToBoxAdapter(
            child: _Images(),
          ),
          SliverToBoxAdapter(
            child: _Ingredients(),
          ),
        ],
      ),
    );
  }
}

class _PostName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name your recipe',
            style: AppTextStyle.dark().body,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Recipe Name',
            ),
          ),
        ],
      ),
    );
  }
}

class _Ingredients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select ingredients',
            style: AppTextStyle.dark().body,
          ),
          Card(
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.add,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Add',
                    style: AppTextStyle.dark().headline,
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

class _Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Text(
              'Upload photos',
              style: AppTextStyle.dark().body,
            ),
          ),
          SizedBox(
            height: 92.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (_, index) {
                if (index == 2) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Icon(
                          CupertinoIcons.add,
                        ),
                      ),
                    ),
                  );
                }

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Placeholder(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
