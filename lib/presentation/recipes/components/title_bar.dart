import 'package:flutter/material.dart';
import 'package:recipe/presentation/core/app_text_style.dart';

class TitleBar extends PreferredSize {
  final String title;
  final List<Widget> actions;

  TitleBar({
    super.key,
    required this.title,
    this.actions = const [],
  }) : super(
          preferredSize: const Size.fromHeight(64.0),
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
                    style: AppTextStyle.dark().display,
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
