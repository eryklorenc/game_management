import 'package:flutter/material.dart';
import 'package:game_management/app/core/theme/app_text_theme_extension.dart';
import 'package:game_management/gen/assets.gen.dart';

class WishListCard extends StatelessWidget {
  const WishListCard(
    this.title, {
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Assets.controller1.image(
              width: 130,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: Theme.of(context).xTextTheme.h0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
