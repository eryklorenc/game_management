import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/app/core/enums.dart';
import 'package:game_management/data/remote_data_sources/most_popular_remote_data_sources.dart';
import 'package:game_management/features/home/most_popular/cubit/most_popular_cubit.dart';
import 'package:game_management/features/home/most_popular/most_popular_list.dart';
import 'package:game_management/features/home/wish_list/cubit/wish_list_cubit.dart';
import 'package:game_management/features/home/wish_list/wish_list_card.dart';
import 'package:game_management/repositories/items_repository_most_popular.dart';
import 'package:game_management/repositories/items_repository_wish_list.dart';

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
        create: (context) => WishListCubit(ItemsRepositoryWishList()),
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
            BlocProvider(
              create: (context) =>
                  MostPopularCubit(ItemsRepositoryMostPopular(MostPopularRemoteDataSource()))..getItemModelMostPopular(),
              child: BlocListener<MostPopularCubit, MostPopularState>(
                listener: (context, state) {
                  if (state.status == Status.error) {
                    final errorMessage = state.errorMessage ?? 'Unkown error';
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(errorMessage),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: BlocBuilder<MostPopularCubit, MostPopularState>(
                  builder: (context, state) {
                    final itemModelMostPopular = state.model;

                    return Column(
                      children: [
                        if (itemModelMostPopular != null)
                          MostPopularList(
                            itemModelMostPopular: itemModelMostPopular,
                          ),
                      ],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocProvider(
              create: (context) =>
                  WishListCubit(ItemsRepositoryWishList())..start(),
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

                  final itemModels = state.items;

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
                        for (final itemModel in itemModels) ...[
                          Dismissible(
                            key: ValueKey(itemModel.id),
                            onDismissed: (_) {
                              context
                                  .read<WishListCubit>()
                                  .delete(itemModelID: itemModel.id);
                            },
                            child: WishListCard(itemModel.title),
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
                              hintText: 'Game name',
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
