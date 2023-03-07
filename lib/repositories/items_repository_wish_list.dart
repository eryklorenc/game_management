import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:game_management/features/home/wish_list/wish_list_page_content.dart';
import 'package:game_management/models/item_model_wish_list.dart';

class ItemsRepositoryWishList {
  Stream<List<ItemModelWishList>> getItemsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
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
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('wishes')
        .add(
      {
        'title': controller1.text,
      },
    );
  }

  Future<void> delete({required String id}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('wishes')
        .doc(id)
        .delete();
  }
}
