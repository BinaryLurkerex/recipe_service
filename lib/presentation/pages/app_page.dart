import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/infrastucture/core/injector.dart';
import 'package:recipe/presentation/bloc/page_bloc.dart';
import 'package:recipe/presentation/pages/views/bookmarks_view.dart';
import 'package:recipe/presentation/pages/views/home_view.dart';
import 'package:recipe/presentation/pages/views/profile_view.dart';
import 'package:recipe/presentation/widgets/app_nav_bar.dart';

@RoutePage()
class AppPage extends StatelessWidget {
  late final PageBloc pageBloc;

  AppPage({super.key}) {
    pageBloc = getIt<PageBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return BlocListener<PageBloc, int>(
      bloc: pageBloc,
      listener: (context, state) {
        pageController.animateToPage(
          state,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceInOut,
        );
      },
      child: Scaffold(
        body: PageView.custom(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          childrenDelegate: SliverChildListDelegate([
            HomeView(),
            BookmarksView(),
            ProfileView(),
          ]),
        ),
        bottomNavigationBar: AppNavBar(),
      ),
    );
  }
}
