import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_service/application/global/global_bloc.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/global/global_entities.dart';
import 'package:recipe_service/domain/facade/global/global_facade.dart';
import 'package:recipe_service/infrastucture/core/injector.dart';
import 'package:recipe_service/presentation/recipes/components/loading_card.dart';

import 'package:recipe_service/presentation/settings/settings_page.dart';

part 'package:recipe_service/presentation/recipes/components/recipe_card.dart';
part 'package:recipe_service/presentation/recipes/widgets/favs_widget.dart';
part 'package:recipe_service/presentation/recipes/widgets/home_widget.dart';
part 'package:recipe_service/presentation/recipes/widgets/post_widget.dart';
part 'package:recipe_service/presentation/recipes/widgets/profile_widget.dart';
part 'package:recipe_service/presentation/recipes/widgets/search_widget.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  static const route = '/';

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  final PageController pageController = PageController();

  void onPageChange(int page) {
    setState(() {
      pageController.jumpToPage(
        page,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<GlobalBloc>(),
        ),
      ],
      child: Scaffold(
        body: PageView.custom(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          childrenDelegate: SliverChildListDelegate([
            const HomeWidget(),
            const SearchWidget(),
            const PostWidget(),
            const FavsWidget(),
            const ProfileWidget(),
          ]),
        ),
        bottomNavigationBar: BottomBarInspiredInside(
          fixed: true,
          fixedIndex: 2,
          indexSelected: 2,
          color: Colors.black87,
          iconSize: 28.0,
          colorSelected: Theme.of(context).colorScheme.background,
          backgroundColor: Theme.of(context).colorScheme.background,
          chipStyle: ChipStyle(
            background: Theme.of(context).colorScheme.primary,
            convexBridge: true,
          ),
          itemStyle: ItemStyle.circle,
          items: const <TabItem>[
            TabItem(
              icon: Icons.home_outlined,
            ),
            TabItem(
              icon: CupertinoIcons.search,
            ),
            TabItem(
              icon: CupertinoIcons.add,
            ),
            TabItem(
              icon: CupertinoIcons.heart,
            ),
            TabItem(
              icon: CupertinoIcons.person_circle,
            ),
          ],
          onTap: onPageChange,
        ),
      ),
    );
  }
}
