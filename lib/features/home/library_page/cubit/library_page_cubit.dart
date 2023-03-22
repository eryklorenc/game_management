import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_management/models/item_model_library.dart';
import 'package:game_management/repositories/items_repository.dart';
import 'package:injectable/injectable.dart';

part 'library_page_state.dart';

part 'library_page_cubit.freezed.dart';


@injectable
class LibraryPageCubit extends Cubit<LibraryPageState> {
  LibraryPageCubit(this._itemsRepositoryLibrary)
      : super(
          const LibraryPageState(
            items: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  final ItemsRepository _itemsRepositoryLibrary;

  StreamSubscription? _streamSubscription;

  Future<void> deleteLibrary({required itemModelID}) async {
    await _itemsRepositoryLibrary.deleteLibrary(id: itemModelID);
  }

  Future<void> add() async {
    await _itemsRepositoryLibrary.addLibrary();
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
        _itemsRepositoryLibrary.getItemsLibraryStream().listen((items) {
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
