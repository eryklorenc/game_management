import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_management/features/home/library_page/library_page_content.dart';
import 'package:meta/meta.dart';

part 'library_page_state.dart';

class LibraryPageCubit extends Cubit<LibraryPageState> {
  LibraryPageCubit()
      : super(
          const LibraryPageState(
            documents: [],
            errorMessage: '',
            isLoading: false,
          ),
        );

  StreamSubscription? _streamSubscription;


  Future<void> add() async {
    FirebaseFirestore.instance.collection('games').add(
      {
        'title': controller.text,
        'status': controllerstatus.text,
      },
    );
  }

  Future<void> start() async {
    emit(
      const LibraryPageState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('games')
        .snapshots()
        .listen((data) {
      emit(
        LibraryPageState(
          documents: data.docs,
          isLoading: false,
          errorMessage: '',
        ),
      );
    })
      ..onError((error) {
        emit(
          LibraryPageState(
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
