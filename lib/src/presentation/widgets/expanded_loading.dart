import 'package:flutter/material.dart';

class ExpandedLoading extends StatelessWidget {
  const ExpandedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: CircularProgressIndicator(
        strokeWidth: 1.0,
      ),
    );
  }
}
