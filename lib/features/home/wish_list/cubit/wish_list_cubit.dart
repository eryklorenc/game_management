import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_management/models/item_model_wish_list.dart';
import 'package:game_management/repositories/items_repository.dart';
import 'package:injectable/injectable.dart';

part 'wish_list_state.dart';


part 'wish_list_cubit.freezed.dart';

@injectable
class WishListCubit extends Cubit<WishListState> {
  WishListCubit(this._itemsRepositoryWishList)
      : super(
          const WishListState(
            items: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  final ItemsRepository _itemsRepositoryWishList;

  StreamSubscription? _streamSubscription;

  Future<void> deleteWishList({required itemModelID}) async {
    await _itemsRepositoryWishList.deleteWishList(id: itemModelID);
  }

  Future<void> addWishList() async {
    await _itemsRepositoryWishList.addWishList();
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
        _itemsRepositoryWishList.getItemsWishListStream().listen((items) {
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
