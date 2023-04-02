import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model_wish_list.freezed.dart';
part 'item_model_wish_list.g.dart';

@freezed
class ItemModelWishList with _$ItemModelWishList {
  const factory ItemModelWishList({
    required String id,
    required String title,
  }) = _ItemModelWishList;

  factory ItemModelWishList.fromJson(Map<String, Object?> json) =>
      _$ItemModelWishListFromJson(json);
}
