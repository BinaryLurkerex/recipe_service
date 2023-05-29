import 'package:flutter/material.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/presentation/bloc/page_bloc.dart';

class AppNavBar extends StatelessWidget {
  late final PageBloc pageBloc;

  AppNavBar({super.key}) {
    pageBloc = services<PageBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(
              Icons.home_filled,
            ),
            color: Colors.black87,
            onPressed: () {
              pageBloc.add(const PageEvent.open(
                value: 0,
              ));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark_rounded,
            ),
            color: Colors.black87,
            onPressed: () {
              pageBloc.add(const PageEvent.open(
                value: 1,
              ));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.person_rounded,
            ),
            color: Colors.black87,
            onPressed: () {
              pageBloc.add(const PageEvent.open(
                value: 2,
              ));
            },
          ),
        ],
      ),
    );
  }
}
