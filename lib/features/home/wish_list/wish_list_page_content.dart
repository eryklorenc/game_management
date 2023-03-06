import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/features/home/wish_list/cubit/wish_list_cubit.dart';
import 'package:game_management/features/home/wish_list/most_popular_list.dart';
import 'package:game_management/features/home/wish_list/wish_list_card.dart';

class WishListPageContent extends StatefulWidget {
  const WishListPageContent({
    super.key,
  });

  @override
  State<WishListPageContent> createState() => _WishListPageContentState();
}

final controller1 = TextEditingController();

class _WishListPageContentState extends State<WishListPageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BlocProvider(
        create: (context) => WishListCubit(),
        child: BlocBuilder<WishListCubit, WishListState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context.read<WishListCubit>().add();
                controller1.clear();
              },
              child: const Icon(Icons.add),
            );
          },
        ),
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
        child: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Wish List',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Icon(Icons.favorite)
                  ],
                ),
              ),
            ),
            const MostPopularList(),
            const SizedBox(
              height: 10,
            ),
            BlocProvider(
              create: (context) => WishListCubit()..start(),
              child: BlocBuilder<WishListCubit, WishListState>(
                builder: (context, state) {
                  if (state.errorMessage.isNotEmpty) {
                    return Center(
                      child:
                          Text('Something went wrong: ${state.errorMessage}'),
                    );
                  }

                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final documents = state.documents;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Wish List',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        for (final document in documents) ...[
                          Dismissible(
                            key: ValueKey(document.id),
                            onDismissed: (_) {
                              FirebaseFirestore.instance
                                  .collection('wishes')
                                  .doc(document.id)
                                  .delete();
                            },
                            child: WishListCard(document['title']),
                          ),
                        ],
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 270,
                          height: 50,
                          child: TextField(
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.greenAccent),
                              ),
                              hintText: 'Nazwa gry',
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            controller: controller1,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
