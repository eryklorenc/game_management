import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game_management/features/home/library_page/game_list.dart';
import 'package:game_management/features/home/wish_list/most_popular_card.dart';

class WishListPageContent extends StatefulWidget {
  const WishListPageContent({
    super.key,
  });

  @override
  State<WishListPageContent> createState() => _WishListPageContentState();
}

class _WishListPageContentState extends State<WishListPageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Wish List',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Icon(Icons.favorite)
                ],
              ),
            ),
          ),
          SingleChildScrollView(
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
                  Row(
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
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: const [
              Text(
                'Wish List',
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              )
            ],
          )
        ],
      ),
    );
  }
}
