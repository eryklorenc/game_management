import 'package:dio/dio.dart';
import 'package:game_management/models/item_model_most_popular.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'most_popular_remote_data_sources.g.dart';

@injectable
@RestApi()
abstract class MostPopularRemoteRetrofitDataSource {
  @factoryMethod
  factory MostPopularRemoteRetrofitDataSource(Dio dio) =
      _MostPopularRemoteRetrofitDataSource;

  @GET("/posts/1")
  Future<ItemModelMostPopular> getDataMostPopular();
}

