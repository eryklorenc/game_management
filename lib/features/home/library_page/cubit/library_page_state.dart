part of 'library_page_cubit.dart';

@freezed
class LibraryPageState with _$LibraryPageState {
  const factory LibraryPageState({
   @Default([]) List<ItemModelLibrary> items,
   @Default(false)  bool isLoading,
   @Default('') String errorMessage,
  }) = _LibraryPageState;
}

//class LibraryPageState {
 // final List<ItemModelLibrary> items;
  //final bool isLoading;
  //final String errorMessage;

  //const LibraryPageState({
    //required this.items,
   // required this.isLoading,
   // required this.errorMessage,
  //});
//}
