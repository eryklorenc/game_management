part of 'library_page_cubit.dart';

@immutable
class LibraryPageState {
  final List<ItemModelLibrary> items;
  final bool isLoading;
  final String errorMessage;

  const LibraryPageState({
    required this.items,
    required this.isLoading,
    required this.errorMessage,
  });
}
