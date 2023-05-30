import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/presentation/core/app_text_style.dart';
import 'package:recipe/presentation/recipes/components/popular_comment.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 720.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: () {
                        //TODO: implement onUsernameTap method
                      },
                      borderRadius: BorderRadius.circular(8.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).colorScheme.primary,
                              ),
                            ],
                          ),
                          const SizedBox(width: 16.0),
                          Text(
                            'Username',
                            style: AppTextStyle.dark().body,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    //TODO: implement onActionsPressed method
                  },
                  icon: const Icon(
                    Icons.more_vert_rounded,
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Placeholder(),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          CupertinoIcons.circle_filled,
                          color: Theme.of(context).colorScheme.primary,
                          size: 8.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          CupertinoIcons.circle_filled,
                          color: Colors.black54,
                          size: 8.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          CupertinoIcons.circle_filled,
                          color: Colors.black54,
                          size: 8.0,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: const Icon(CupertinoIcons.heart),
                    ),
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: const Icon(CupertinoIcons.chat_bubble),
                    ),
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: const Icon(CupertinoIcons.paperplane),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: const Icon(CupertinoIcons.bookmark),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: const PopularComment(),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
