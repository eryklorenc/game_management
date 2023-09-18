import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/features/home/most_popular/cubit/most_popular_cubit.dart';
import 'package:game_management/features/home/most_popular/most_popular_view.dart';
import 'package:game_management/models/item_model_most_popular.dart';

class MostPopularCard extends StatelessWidget {
  final ImageProvider image;
  const MostPopularCard({
    super.key,
    required this.image,
    required this.itemModelMostPopular,
  });

  final ItemModelMostPopular itemModelMostPopular;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MostPopularCubit, MostPopularState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MostPopularView(
                    itemModelMostPopular: itemModelMostPopular,
                    image: image,
                  ),
                ),
              );
            }
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
      },
    );
  }
}
