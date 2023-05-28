import 'package:flutter/material.dart';

class AppHeaderBar extends PreferredSize {
  final String title;

  AppHeaderBar({
    super.key,
    required this.title,
  }) : super(
          preferredSize: const Size.fromHeight(92.0),
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
        );
}
