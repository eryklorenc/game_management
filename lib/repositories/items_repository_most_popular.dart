
import 'package:game_management/data/remote_data_sources/most_popular_remote_data_sources.dart';
import 'package:game_management/models/item_model_most_popular.dart';

class ItemsRepositoryMostPopular {
  ItemsRepositoryMostPopular(this._mostPopularRemoteDataSource);
  final MostPopularRemoteDataSource _mostPopularRemoteDataSource;

  Future<ItemModelMostPopular?> getItemModelMostPopular() async {
    final responseData = await _mostPopularRemoteDataSource.getDataMostPopular();

    if (responseData == null) {
      return null;
    }

    final content = responseData['body'] as String;

    return ItemModelMostPopular(
      content: content,
    );
  }
}
