import 'package:flutter/material.dart';
import 'package:game_management/features/home/wish_list/most_popular_card.dart';

class MostPopularList extends StatelessWidget {
  const MostPopularList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Most Popular',
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  offset: const Offset(1, 1),
                  blurRadius: 42,
                  spreadRadius: 16,
                ),
              ]),
              child: Row(
                children: const [
                  MostPopularCard(
                    image: AssetImage('assets/game1.jpg'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  MostPopularCard(
                    image: AssetImage('assets/game2.jpg'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  MostPopularCard(
                    image: AssetImage('assets/game3.jpg'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  MostPopularCard(
                    image: AssetImage('assets/game4.jpg'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  MostPopularCard(
                    image: AssetImage('assets/game5.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
