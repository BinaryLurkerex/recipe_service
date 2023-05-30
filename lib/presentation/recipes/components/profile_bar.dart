// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:recipe/presentation/core/app_text_style.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: FittedBox(
            child: CircleAvatar(),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _ProfilePin(
                  value: '2',
                  title: 'Posts',
                  padding: EdgeInsets.all(8.0),
                ),
              ),
              Expanded(
                child: _ProfilePin(
                  value: '2',
                  title: 'Followers',
                  padding: EdgeInsets.all(8.0),
                ),
              ),
              Expanded(
                child: _ProfilePin(
                  value: '2',
                  title: 'Following',
                  padding: EdgeInsets.all(8.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProfilePin extends StatelessWidget {
  final String value;
  final String title;
  final EdgeInsets padding;

  const _ProfilePin({
    required this.value,
    required this.title,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: AppTextStyle.dark().display,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            title,
            style: AppTextStyle.dark().headline,
          ),
        ],
      ),
    );
  }
}
