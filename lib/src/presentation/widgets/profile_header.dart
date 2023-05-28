import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/user.dart';
import 'package:recipe/src/presentation/widgets/profile_dot.dart';

class ProfileHeader extends StatelessWidget {
  final User user;

  const ProfileHeader({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 48.0,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                child: Text(
                  user.name.characters.first,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            user.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 92.0,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileDot(
                  name: 'Posts',
                  value: '2',
                ),
                ProfileDot(
                  name: 'Posts',
                  value: '2',
                ),
                ProfileDot(
                  name: 'Posts',
                  value: '2',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
