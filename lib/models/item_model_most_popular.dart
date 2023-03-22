import 'package:freezed_annotation/freezed_annotation.dart';


part 'item_model_most_popular.freezed.dart';
part 'item_model_most_popular.g.dart';

@freezed
class ItemModelMostPopular with _$ItemModelMostPopular {
  factory ItemModelMostPopular(
   @JsonKey(name: 'body') String content,
  ) = _ItemModelMostPopular;

  factory ItemModelMostPopular.fromJson(Map<String, dynamic> json) =>
      _$ItemModelMostPopularFromJson(json);
}

