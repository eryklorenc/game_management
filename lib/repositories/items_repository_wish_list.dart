import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:game_management/features/home/wish_list/wish_list_page_content.dart';
import 'package:game_management/models/item_model_wish_list.dart';

class ItemsRepositoryWishList {
  Stream<List<ItemModelWishList>> getItemsStream() {
    return FirebaseFirestore.instance
        .collection('wishes')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return ItemModelWishList(
            id: doc.id,
            title: doc['title'],
          );
        },
      ).toList();
    });
  }

  Future<void> add() async {
    await FirebaseFirestore.instance.collection('wishes').add(
      {
        'title': controller1.text,
      },
    );
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('wishes').doc(id).delete();
  }
}
