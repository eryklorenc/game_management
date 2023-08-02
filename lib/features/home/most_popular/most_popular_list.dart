import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/app/core/theme/app_colors.dart';
import 'package:game_management/features/home/most_popular/cubit/most_popular_cubit.dart';
import 'package:game_management/features/home/most_popular/most_popular_card.dart';
import 'package:game_management/models/item_model_most_popular.dart';

class MostPopularList extends StatelessWidget {
  const MostPopularList({
    super.key,
    required this.itemModelMostPopular,
  });

  final ItemModelMostPopular itemModelMostPopular;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MostPopularCubit, MostPopularState>(
      builder: (context, state) {
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
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadow.withOpacity(.1),
                        offset: const Offset(1, 1),
                        blurRadius: 42,
                        spreadRadius: 16,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: MostPopularCard(
                          image: const AssetImage('assets/game1.jpg'),
                          itemModelMostPopular: itemModelMostPopular,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: MostPopularCard(
                          image: const AssetImage('assets/game2.jpg'),
                          itemModelMostPopular: itemModelMostPopular,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: MostPopularCard(
                          image: const AssetImage('assets/game3.jpg'),
                          itemModelMostPopular: itemModelMostPopular,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: MostPopularCard(
                          image: const AssetImage('assets/game4.jpg'),
                          itemModelMostPopular: itemModelMostPopular,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: MostPopularCard(
                          image: const AssetImage('assets/game5.jpg'),
                          itemModelMostPopular: itemModelMostPopular,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
