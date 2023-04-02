part of 'library_page_cubit.dart';

@freezed
class LibraryPageState with _$LibraryPageState {
  const factory LibraryPageState({
   @Default([]) List<ItemModelLibrary> items,
   @Default(false)  bool isLoading,
   @Default('') String errorMessage,
  }) = _LibraryPageState;
}


