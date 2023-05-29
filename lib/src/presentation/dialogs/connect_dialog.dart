import 'package:flutter/material.dart';

class ConnectDialog extends StatelessWidget {
  const ConnectDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Server is currently unavailable',
              ),
            ),
            OutlinedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text(
                'Sign up like Ghost',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
