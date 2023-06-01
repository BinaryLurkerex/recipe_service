part of '../recipes_page.dart';

class _RecipeCard extends StatelessWidget {
  final Function()? onCardPressed;
  final Function()? onUsernamePressed;

  const _RecipeCard({
    this.onCardPressed,
    this.onUsernamePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 8.0,
      ),
      child: GestureDetector(
        onTap: onCardPressed,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 720.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: onUsernamePressed,
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
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
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
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(
                            CupertinoIcons.circle_filled,
                            color: Theme.of(context).colorScheme.primary,
                            size: 8.0,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            CupertinoIcons.circle_filled,
                            color: Colors.black54,
                            size: 8.0,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            CupertinoIcons.circle_filled,
                            color: Colors.black54,
                            size: 8.0,
                          ),
                        ),
                        const Spacer(),
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
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: _Comment(),
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Comment extends StatelessWidget {
  const _Comment();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '1 like',
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
        ),
        Text(
          'large comment' * 40,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
        ),
        Text(
          '{few time ago}',
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
