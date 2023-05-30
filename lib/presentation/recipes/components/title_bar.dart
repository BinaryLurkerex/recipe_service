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
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: AppTextStyle.dark().display,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      ...actions
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
