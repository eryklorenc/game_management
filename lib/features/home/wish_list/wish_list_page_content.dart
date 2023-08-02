import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/app/core/config/enums.dart';
import 'package:game_management/app/core/theme/app_colors.dart';
import 'package:game_management/app/core/theme/app_text_theme_extension.dart';
import 'package:game_management/app/core/utils/injection_container.dart';
import 'package:game_management/features/home/most_popular/cubit/most_popular_cubit.dart';
import 'package:game_management/features/home/most_popular/most_popular_list.dart';
import 'package:game_management/features/home/wish_list/cubit/wish_list_cubit.dart';
import 'package:game_management/features/home/wish_list/wish_list_card.dart';
import 'package:game_management/generated/l10n.dart';

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
        create: (context) => getIt<WishListCubit>(),
        child: BlocBuilder<WishListCubit, WishListState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                context.read<WishListCubit>().addWishList();
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
              AppColors.white.withOpacity(0.5),
              AppColors.white.withOpacity(0.1),
              AppColors.dark.withOpacity(1),
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
                      S.of(context).yourWishList,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Icon(Icons.favorite)
                  ],
                ),
              ),
            ),
            BlocProvider(
              create: (context) =>
                  getIt<MostPopularCubit>()..getItemModelMostPopular(),
              child: BlocConsumer<MostPopularCubit, MostPopularState>(
                listener: (context, state) {
                  if (state.status == Status.error) {
                    final errorMessage =
                        state.errorMessage ?? S.of(context).unknownError;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(errorMessage),
                        backgroundColor: AppColors.red,
                      ),
                    );
                  }
                },
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
            const SizedBox(
              height: 10,
            ),
            BlocProvider(
              create: (context) => getIt<WishListCubit>()..start(),
              child: BlocBuilder<WishListCubit, WishListState>(
                builder: (context, state) {
                  if (state.errorMessage.isNotEmpty) {
                    return Center(
                      child: Text(
                        '${S.of(context).somethingWentWrong} ${state.errorMessage}',
                      ),
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
                        Text(
                          S.of(context).wishList,
                          style: Theme.of(context).xTextTheme.body1,
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
                                  .deleteWishList(itemModelID: itemModel.id);
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
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: AppColors.primary,
                                ),
                              ),
                              hintText: S.of(context).gameName,
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            controller: controller1,
                          ),
                        ),
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
