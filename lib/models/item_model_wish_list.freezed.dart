// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model_wish_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModelWishList _$ItemModelWishListFromJson(Map<String, dynamic> json) {
  return _ItemModelWishList.fromJson(json);
}

/// @nodoc
mixin _$ItemModelWishList {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelWishListCopyWith<ItemModelWishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelWishListCopyWith<$Res> {
  factory $ItemModelWishListCopyWith(
          ItemModelWishList value, $Res Function(ItemModelWishList) then) =
      _$ItemModelWishListCopyWithImpl<$Res, ItemModelWishList>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$ItemModelWishListCopyWithImpl<$Res, $Val extends ItemModelWishList>
    implements $ItemModelWishListCopyWith<$Res> {
  _$ItemModelWishListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemModelWishListCopyWith<$Res>
    implements $ItemModelWishListCopyWith<$Res> {
  factory _$$_ItemModelWishListCopyWith(_$_ItemModelWishList value,
          $Res Function(_$_ItemModelWishList) then) =
      __$$_ItemModelWishListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$_ItemModelWishListCopyWithImpl<$Res>
    extends _$ItemModelWishListCopyWithImpl<$Res, _$_ItemModelWishList>
    implements _$$_ItemModelWishListCopyWith<$Res> {
  __$$_ItemModelWishListCopyWithImpl(
      _$_ItemModelWishList _value, $Res Function(_$_ItemModelWishList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$_ItemModelWishList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModelWishList implements _ItemModelWishList {
  const _$_ItemModelWishList({required this.id, required this.title});

  factory _$_ItemModelWishList.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelWishListFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'ItemModelWishList(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModelWishList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemModelWishListCopyWith<_$_ItemModelWishList> get copyWith =>
      __$$_ItemModelWishListCopyWithImpl<_$_ItemModelWishList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelWishListToJson(
      this,
    );
  }
}

abstract class _ItemModelWishList implements ItemModelWishList {
  const factory _ItemModelWishList(
      {required final String id,
      required final String title}) = _$_ItemModelWishList;

  factory _ItemModelWishList.fromJson(Map<String, dynamic> json) =
      _$_ItemModelWishList.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelWishListCopyWith<_$_ItemModelWishList> get copyWith =>
      throw _privateConstructorUsedError;
}
