import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/models/item_model_wish_list.dart';
import 'package:game_management/repositories/items_repository_wish_list.dart';
import 'package:meta/meta.dart';

part 'wish_list_state.dart';

class WishListCubit extends Cubit<WishListState> {
  WishListCubit(this._itemsRepositoryWishList)
      : super(
          const WishListState(
            items: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  final ItemsRepositoryWishList _itemsRepositoryWishList;

  StreamSubscription? _streamSubscription;

  Future<void> delete({required itemModelID}) async {
    await _itemsRepositoryWishList.delete(id: itemModelID);
  }

  Future<void> add() async {
    await _itemsRepositoryWishList.add();
  }

  Future<void> start() async {
    emit(
      const WishListState(
        items: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription =
        _itemsRepositoryWishList.getItemsStream().listen((items) {
      emit(
        WishListState(
          items: items,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
          ..onError((error) {
            emit(
              WishListState(
                items: const [],
                errorMessage: error.toString(),
                isLoading: false,
              ),
            );
          });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
