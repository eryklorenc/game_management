import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/app/core/theme/app_colors.dart';
import 'package:game_management/app/core/utils/injection_container.dart';
import 'package:game_management/features/home/most_popular/cubit/most_popular_cubit.dart';
import 'package:game_management/models/item_model_most_popular.dart';

class MostPopularView extends StatelessWidget {
  const MostPopularView({
    super.key,
    required this.image,
    required this.itemModelMostPopular,
  });

  final ImageProvider image;
  final ItemModelMostPopular itemModelMostPopular;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            getIt<MostPopularCubit>()..getItemModelMostPopular(),
        child: BlocBuilder<MostPopularCubit, MostPopularState>(
          builder: (context, state) {
            return Scaffold(
              body: Stack(
                children: [
                  Container(
                    color: AppColors.grey,
                  ),
                  SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColors.dark.withOpacity(0),
                                  AppColors.dark.withOpacity(0),
                                  AppColors.dark.withOpacity(0),
                                  AppColors.dark.withOpacity(1),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      color: AppColors.dark.withOpacity(.5),
                                      offset: const Offset(0, 20),
                                      blurRadius: 32,
                                      spreadRadius: 16,
                                    ),
                                  ]),
                                  child: Image(
                                    image: image,
                                    width:
                                        MediaQuery.of(context).size.width - 100,
                                    height:
                                        MediaQuery.of(context).size.width - 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        itemModelMostPopular.content.toString(),
                                        style: const TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: AppColors.dark,
                            height: 500,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    child: Row(
                      children: [
                        SafeArea(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
}
