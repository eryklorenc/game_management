import 'package:flutter/material.dart';
import 'package:game_management/app/core/theme/app_text_theme_extension.dart';

class GameList extends StatelessWidget {
  const GameList(
    this.title,
    this.price, {
    super.key,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox.fromSize(
            size: const Size.fromRadius(48),
            child: const Image(
              image: AssetImage('assets/controller1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).xTextTheme.body3,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                price,
                style: Theme.of(context).xTextTheme.body4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
