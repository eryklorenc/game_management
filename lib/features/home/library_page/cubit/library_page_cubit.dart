import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/models/item_model_library.dart';
import 'package:game_management/repositories/items_repository_library.dart';
import 'package:meta/meta.dart';

part 'library_page_state.dart';

class LibraryPageCubit extends Cubit<LibraryPageState> {
  LibraryPageCubit(this._itemsRepositoryLibrary)
      : super(
          const LibraryPageState(
            items: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  final ItemsRepositoryLibrary _itemsRepositoryLibrary;

  StreamSubscription? _streamSubscription;

  Future<void> delete({required itemModelID}) async {
    await _itemsRepositoryLibrary.delete(id: itemModelID);
  }

  Future<void> add() async {
    await _itemsRepositoryLibrary.add();
  }

  Future<void> start() async {
    emit(
      const LibraryPageState(
        items: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription =
        _itemsRepositoryLibrary.getItemsStream().listen((items) {
      emit(
        LibraryPageState(
          items: items,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
          ..onError((error) {
            emit(
              LibraryPageState(
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