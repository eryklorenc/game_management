import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:game_management/features/home/wish_list/wish_list_page_content.dart';
import 'package:game_management/models/item_model_wish_list.dart';
import 'package:meta/meta.dart';

part 'wish_list_state.dart';

class WishListCubit extends Cubit<WishListState> {
  WishListCubit()
      : super(
          const WishListState(
            items: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> add() async {FirebaseFirestore.instance.collection('wishes').add(
            {
              'title': controller1.text,
            },
          );
  }

  Future<void> start() async {
    emit(
      const WishListState(
        items: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('wishes')
        .snapshots()
        .listen((items) {
          
      final itemModels = items.docs.map((doc) {
        return ItemModelWishList(
          id: doc.id,
          title: doc['title'],
        );
      }).toList();
      emit(
        WishListState(
          
          items: itemModels,
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
