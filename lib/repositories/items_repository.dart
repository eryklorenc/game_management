import 'package:game_management/data/remote_data_sources/items_library_remote_data_sources.dart';
import 'package:game_management/data/remote_data_sources/items_wish_list_remote_data_sources.dart';
import 'package:game_management/models/item_model_library.dart';
import 'package:game_management/models/item_model_wish_list.dart';
import 'package:injectable/injectable.dart';

@injectable
class ItemsRepository {
  ItemsRepository({
    required  this.itemsLibraryRemoteDataSource,
   required this.itemsWishListRemoteDataSource,
  });

  final ItemsLibraryRemoteDataSource itemsLibraryRemoteDataSource;
  final ItemsWishListRemoteDataSource itemsWishListRemoteDataSource;

  Stream<List<ItemModelLibrary>> getItemsLibraryStream() {
    return itemsLibraryRemoteDataSource.getItemsLibraryStream();
  }

  Future<void> addLibrary() async {
    return itemsLibraryRemoteDataSource.addLibrary();
  }

  Future<void> deleteLibrary({required String id}) {
    return itemsLibraryRemoteDataSource.deleteLibrary(id: id);
  }

  Stream<List<ItemModelWishList>> getItemsWishListStream() {
    return itemsWishListRemoteDataSource.getItemsWishListStream();
  }

  Future<void> addWishList() async {
    return itemsWishListRemoteDataSource.addWishList();
  }

  Future<void> deleteWishList({required String id}) {
    return itemsWishListRemoteDataSource.deleteWishList(id: id);
  }
}
