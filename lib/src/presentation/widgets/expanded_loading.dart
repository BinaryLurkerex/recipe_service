import 'package:flutter/material.dart';

class ExpandedLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: CircularProgressIndicator(
        strokeWidth: 1.0,
      ),
    );
  }
}
