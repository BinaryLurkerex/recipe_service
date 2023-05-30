import 'package:flutter/material.dart';
import 'package:recipe/src/domain/entities/user.dart';
import 'package:recipe/src/presentation/widgets/profile_dot.dart';

class ProfileHeader extends StatelessWidget {
  final UserDEPRECATED user;

  const ProfileHeader({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxWidth: 420.0,
      ),
      child: Column(
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
                children: [
                  Expanded(
                    child: ProfileDot(
                      name: 'Posts',
                      value: '0',
                    ),
                  ),
                  Expanded(
                    child: ProfileDot(
                      name: 'Following',
                      value: '0',
                    ),
                  ),
                  Expanded(
                    child: ProfileDot(
                      name: 'Followers',
                      value: '0',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
