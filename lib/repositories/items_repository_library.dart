import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:game_management/features/home/library_page/library_page_content.dart';
import 'package:game_management/models/item_model_library.dart';

class ItemsRepositoryLibrary {
  Stream<List<ItemModelLibrary>> getItemsStream() {
    return FirebaseFirestore.instance
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

  Future<void> add() async {
    await FirebaseFirestore.instance.collection('games').add(
      {
        'title': controller.text,
        'status': controllerstatus.text,
      },
    );
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('games').doc(id).delete();
  }
}
