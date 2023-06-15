part of '../recipes_page.dart';

class _RecipeCard extends StatelessWidget {
  final Post post;

  final Function()? onCardPressed;
  final Function()? onUsernamePressed;

  const _RecipeCard({
    required this.post,
    this.onCardPressed,
    this.onUsernamePressed,
  });

  @override
  Widget build(BuildContext context) {
    final facade = getIt<GlobalFacade>();
    final profile = facade.getProfile();

    return FutureBuilder(
      future: profile,
      builder: (_, data) {
        if (data.hasData) {
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
                                        backgroundImage: NetworkImage(data.data!.avatarUrl),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 16.0),
                                  Text(
                                    data.data!.username,
                                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.more_vert_rounded,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.secondary,
                            ],
                          ),
                        ),
                        child: const SizedBox.expand(),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            //TODO: add generator
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
                              // const Padding(
                              //   padding: EdgeInsets.all(2.0),
                              //   child: Icon(
                              //     CupertinoIcons.circle_filled,
                              //     color: Colors.black54,
                              //     size: 8.0,
                              //   ),
                              // ),
                              // const Padding(
                              //   padding: EdgeInsets.all(2.0),
                              //   child: Icon(
                              //     CupertinoIcons.circle_filled,
                              //     color: Colors.black54,
                              //     size: 8.0,
                              //   ),
                              // ),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${post.likes} like',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                          ),
                          Text(
                            'Что-то',
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
                      ),
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

        return LoadingCard();
      },
    );
  }
}
