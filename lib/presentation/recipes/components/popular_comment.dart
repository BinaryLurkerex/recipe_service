import 'package:flutter/cupertino.dart';
import 'package:recipe_service/presentation/core/app_text_style.dart';

class PopularComment extends StatelessWidget {
  const PopularComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Нравится: {favCount}',
          style: AppTextStyle.dark().body,
        ),
        Text(
          'large comment' * 40,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.dark().headline,
        ),
        Text(
          '{few time ago}',
          style: AppTextStyle.dark().label,
        ),
      ],
    );
  }
}
