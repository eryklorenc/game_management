import 'package:game_management/data/remote_data_sources/most_popular_remote_data_sources.dart';
import 'package:game_management/models/item_model_most_popular.dart';

class ItemsRepositoryMostPopular {
  ItemsRepositoryMostPopular(this._mostPopularRemoteDataSource);
  final MostPopularRemoteDataSource _mostPopularRemoteDataSource;

  Future<ItemModelMostPopular?> getItemModelMostPopular() async {
    final json =
        await _mostPopularRemoteDataSource.getDataMostPopular();

    if (json == null) {
      return null;
    }

    return ItemModelMostPopular.fromJson(json);

  }
}
