// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model_library.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModelLibrary _$ItemModelLibraryFromJson(Map<String, dynamic> json) {
  return _ItemModelLibrary.fromJson(json);
}

/// @nodoc
mixin _$ItemModelLibrary {
  String get title => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelLibraryCopyWith<ItemModelLibrary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelLibraryCopyWith<$Res> {
  factory $ItemModelLibraryCopyWith(
          ItemModelLibrary value, $Res Function(ItemModelLibrary) then) =
      _$ItemModelLibraryCopyWithImpl<$Res, ItemModelLibrary>;
  @useResult
  $Res call({String title, String status, String id});
}

/// @nodoc
class _$ItemModelLibraryCopyWithImpl<$Res, $Val extends ItemModelLibrary>
    implements $ItemModelLibraryCopyWith<$Res> {
  _$ItemModelLibraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemModelLibraryCopyWith<$Res>
    implements $ItemModelLibraryCopyWith<$Res> {
  factory _$$_ItemModelLibraryCopyWith(
          _$_ItemModelLibrary value, $Res Function(_$_ItemModelLibrary) then) =
      __$$_ItemModelLibraryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String status, String id});
}

/// @nodoc
class __$$_ItemModelLibraryCopyWithImpl<$Res>
    extends _$ItemModelLibraryCopyWithImpl<$Res, _$_ItemModelLibrary>
    implements _$$_ItemModelLibraryCopyWith<$Res> {
  __$$_ItemModelLibraryCopyWithImpl(
      _$_ItemModelLibrary _value, $Res Function(_$_ItemModelLibrary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? id = null,
  }) {
    return _then(_$_ItemModelLibrary(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModelLibrary implements _ItemModelLibrary {
  const _$_ItemModelLibrary(
      {required this.title, required this.status, required this.id});

  factory _$_ItemModelLibrary.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelLibraryFromJson(json);

  @override
  final String title;
  @override
  final String status;
  @override
  final String id;

  @override
  String toString() {
    return 'ItemModelLibrary(title: $title, status: $status, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModelLibrary &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, status, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemModelLibraryCopyWith<_$_ItemModelLibrary> get copyWith =>
      __$$_ItemModelLibraryCopyWithImpl<_$_ItemModelLibrary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelLibraryToJson(
      this,
    );
  }
}

abstract class _ItemModelLibrary implements ItemModelLibrary {
  const factory _ItemModelLibrary(
      {required final String title,
      required final String status,
      required final String id}) = _$_ItemModelLibrary;

  factory _ItemModelLibrary.fromJson(Map<String, dynamic> json) =
      _$_ItemModelLibrary.fromJson;

  @override
  String get title;
  @override
  String get status;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelLibraryCopyWith<_$_ItemModelLibrary> get copyWith =>
      throw _privateConstructorUsedError;
}
