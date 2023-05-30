import 'package:flutter/material.dart';

class AppNav extends StatelessWidget {
  final Function(int page) onPageChange;

  const AppNav({
    super.key,
    required this.onPageChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(
              Icons.home_filled,
            ),
            color: Colors.black87,
            onPressed: () {
              // pageBloc.add(const PageEvent.open(
              //   value: 0,
              // ));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search_rounded,
            ),
            color: Colors.black87,
            onPressed: () {
              // pageBloc.add(const PageEvent.open(
              //   value: 0,
              // ));
            },
          ),
          IconButton.filled(
            icon: const Icon(
              Icons.add_rounded,
              size: 64.0,
            ),
            color: Colors.black87,
            onPressed: () {
              // pageBloc.add(const PageEvent.open(
              //   value: 0,
              // ));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark_rounded,
            ),
            color: Colors.black87,
            onPressed: () {
              // pageBloc.add(const PageEvent.open(
              //   value: 1,
              // ));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.person_rounded,
            ),
            color: Colors.black87,
            onPressed: () {
              // pageBloc.add(const PageEvent.open(
              //   value: 2,
              // ));
            },
          ),
        ],
      ),
    );
  }
}
