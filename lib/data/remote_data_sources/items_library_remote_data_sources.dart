import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:game_management/features/home/library_page/library_page_content.dart';
import 'package:game_management/models/item_model_library.dart';
import 'package:injectable/injectable.dart';



@injectable
class ItemsLibraryRemoteDataSource {
  Stream<List<ItemModelLibrary>> getItemsLibraryStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('games')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map(
        (doc) {
          return ItemModelLibrary(
            id: doc.id,
            title: doc['title'],
            status: doc['status'],
          );
        },
      ).toList();
    });
  }

  Future<void> addLibrary() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('games')
        .add(
      {
        'title': controller.text,
        'status': controllerstatus.text,
      },
    );
  }

  Future<void> deleteLibrary({required String id}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('games')
        .doc(id)
        .delete();
  }
}
