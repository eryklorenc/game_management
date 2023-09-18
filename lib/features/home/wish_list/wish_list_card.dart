import 'package:flutter/material.dart';
import 'package:game_management/app/core/theme/app_colors.dart';

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
            child: const Image(
              width: 130,
              image: AssetImage('assets/controller1.jpg'),
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
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
