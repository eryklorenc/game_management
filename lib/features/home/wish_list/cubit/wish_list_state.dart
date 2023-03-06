part of 'wish_list_cubit.dart';

@immutable
class WishListState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
  final bool isLoading;
  final String errorMessage;

  const WishListState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}


