import 'package:flutter/material.dart';

class DefaultGradient extends LinearGradient {
  DefaultGradient(BuildContext context)
      : super(
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          tileMode: TileMode.clamp,
          stops: const [0.3, 0.6],
        );
}
