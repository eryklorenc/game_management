import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'wish_list_state.dart';

class WishListCubit extends Cubit<WishListState> {
  WishListCubit()
      : super(
          const WishListState(
            documents: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const WishListState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('wishes')
        .snapshots()
        .listen((data) {
      emit(
        WishListState(
          documents: data.docs,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          WishListState(
            documents: const [],
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
