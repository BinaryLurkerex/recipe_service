import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/infrastucture/core/injector.dart';
import 'package:recipe/presentation/bloc/home_bloc.dart';
import 'package:recipe/presentation/widgets/recipe_card.dart';

class HomeView extends StatelessWidget {
  late final HomeBloc homeBloc;

  HomeView({super.key}) {
    homeBloc = getIt<HomeBloc>();
    homeBloc.add(const HomeEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(viewportFraction: 0.75);

    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        listener: (context, state) {
          state.map(
            loading: (state) => null,
            data: (state) {
              if (controller.hasClients) {
                controller.animateToPage(
                  state.currentRecipe,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.bounceInOut,
                );
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
              getIt<HomeBloc>().add(
                const HomeEvent.prev(),
              );
            } else if (index > state.currentRecipe) {
              getIt<HomeBloc>().add(
                const HomeEvent.next(),
              );
            }
          },
          child: RecipeCard(
            isActive: active,
            recipe: state.recipes[index],
          ),
        );
      },
    );
  }
}
