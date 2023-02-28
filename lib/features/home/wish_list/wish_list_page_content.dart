import 'package:flutter/material.dart';
import 'package:game_management/features/home/wish_list/most_popular_list.dart';

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 5,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.1),
              Colors.black.withOpacity(1),
            ])),
        child: Column(
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
            const MostPopularList(),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const Text(
                  'Wish List',
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        width: 150,
                        image: AssetImage('assets/jpg1.jpg'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: const [
                            Text(
                              ('data'),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              ('data'),
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
