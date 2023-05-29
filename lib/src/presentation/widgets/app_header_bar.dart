import 'package:flutter/material.dart';

class AppHeaderBar extends PreferredSize {
  final String title;
  final List<Widget> actions;

  AppHeaderBar({
    super.key,
    required this.title,
    this.actions = const [],
  }) : super(
          preferredSize: const Size.fromHeight(92.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 8.0,
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
                if (actions.isNotEmpty)
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: actions,
                    ),
                  ),
              ],
            ),
          ),
        );
}
