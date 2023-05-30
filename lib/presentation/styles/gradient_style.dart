import 'package:flutter/material.dart';

LinearGradient defaultGradient(BuildContext context) {
  return LinearGradient(
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
