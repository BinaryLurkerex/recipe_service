import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/presentation/bloc/home_bloc.dart';
import 'package:recipe/src/presentation/widgets/app_header_bar.dart';
import 'package:recipe/src/presentation/widgets/recipe_card.dart';

class HomeView extends StatelessWidget {
  late final HomeBloc homeBloc;

  HomeView({super.key}) {
    homeBloc = services<HomeBloc>();
    homeBloc.add(const HomeEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(viewportFraction: 0.75);

    return Scaffold(
      appBar: AppHeaderBar(
        title: 'Recipes',
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        listener: (context, state) {
          state.map(
            loading: (state) => null,
            data: (state) {
              if (controller.hasClients) {
                controller.jumpToPage(state.currentRecipe);
              }
            },
          );
        },
        builder: (context, state) {
          return state.map(
            loading: (state) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1.0,
                ),
              );
            },
            data: (state) {
              return Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.6,
                  ),
                  child: _HomePageScroll(
                    state: state,
                    controller: controller,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _HomePageScroll extends StatelessWidget {
  final DataHomeState state;
  final PageController controller;

  const _HomePageScroll({
    required this.state,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.recipes.length,
      itemBuilder: (context, index) {
        bool active = (state.currentRecipe == index);

        return GestureDetector(
          onTap: () {
            if (index < state.currentRecipe) {
              services<HomeBloc>().add(
                const HomeEvent.prev(),
              );
            } else if (index > state.currentRecipe) {
              services<HomeBloc>().add(
                const HomeEvent.next(),
              );
            }
          },
          child: RecipeCard(
            isActive: active,
            index: index,
            recipe: state.recipes[index],
          ),
        );
      },
    );
  }
}
