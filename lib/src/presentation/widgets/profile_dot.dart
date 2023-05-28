import 'package:flutter/material.dart';

class ProfileDot extends StatelessWidget {
  final String name;
  final String value;

  const ProfileDot({
    super.key,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(8.0),
        //   color: Theme.of(context).colorScheme.onBackground,
        // ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
