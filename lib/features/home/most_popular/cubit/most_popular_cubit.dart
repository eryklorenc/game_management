import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/app/core/enums.dart';
import 'package:game_management/models/item_model_most_popular.dart';
import 'package:game_management/repositories/items_repository_most_popular.dart';

part 'most_popular_state.dart';

class MostPopularCubit extends Cubit<MostPopularState> {
  MostPopularCubit(
    this._itemsRepositoryMostPopular,
  ) : super(
          const MostPopularState(),
        );

  final ItemsRepositoryMostPopular _itemsRepositoryMostPopular;

  Future<void> getItemModelMostPopular() async {
    emit(const MostPopularState(status: Status.loading));
    try {
      final itemModelMostPopular =
          await _itemsRepositoryMostPopular.getItemModelMostPopular();
      emit(
        MostPopularState(
          model: itemModelMostPopular,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        MostPopularState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
