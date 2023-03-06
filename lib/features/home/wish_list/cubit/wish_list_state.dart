part of 'wish_list_cubit.dart';

@immutable
class WishListState {
  final List<ItemModelWishList> items;
  final bool isLoading;
  final String errorMessage;

  const WishListState({
    required this.items,
    required this.isLoading,
    required this.errorMessage,
  });
}


