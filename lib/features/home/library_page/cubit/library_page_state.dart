part of 'library_page_cubit.dart';

@immutable
class LibraryPageState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
  final bool isLoading;
  final String errorMessage;

  const LibraryPageState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
