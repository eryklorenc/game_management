import 'package:flutter/material.dart';
import 'package:game_management/features/home/most_popular/most_popular_view.dart';

class MostPopularCard extends StatelessWidget {
  final ImageProvider image;
  const MostPopularCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MostPopularView(
              image: image,
            ),
          ),
        );
      },
      child: Column(
        children: [
          (Image(
            image: image,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          )),
        ],
      ),
    );
  }
}
