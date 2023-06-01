part of 'package:recipe_service/presentation/recipes/recipes_page.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Post New Recipe'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          TextButton(
            onPressed: () {
              //TODO: Handle continue button
            },
            child: const Text(
              'Continue',
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
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
            style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black),
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
            style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black),
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
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black),
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
              style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black),
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
