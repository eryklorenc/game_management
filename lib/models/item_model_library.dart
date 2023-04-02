import 'package:freezed_annotation/freezed_annotation.dart';


part 'item_model_library.freezed.dart';
part 'item_model_library.g.dart';

@freezed
class ItemModelLibrary with _$ItemModelLibrary {
  const factory ItemModelLibrary({
    required String title,
    required String status,
    required String id,
  }) = _ItemModelLibrary;

  factory ItemModelLibrary.fromJson(Map<String, Object?> json)
      => _$ItemModelLibraryFromJson(json);
}


