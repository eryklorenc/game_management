part of 'wish_list_cubit.dart';

@freezed
class WishListState with _$WishListState {
  const factory WishListState({
    @Default([]) List<ItemModelWishList> items,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _WishListState;
}

//class WishListState {
  //final List<ItemModelWishList> items;
  //final bool isLoading;
  //final String errorMessage;

  //const WishListState({
    //required this.items,
    //required this.isLoading,
    //required this.errorMessage,
  //});
//}
