// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model_most_popular.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModelMostPopular _$ItemModelMostPopularFromJson(Map<String, dynamic> json) {
  return _ItemModelMostPopular.fromJson(json);
}

/// @nodoc
mixin _$ItemModelMostPopular {
  @JsonKey(name: 'body')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelMostPopularCopyWith<ItemModelMostPopular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelMostPopularCopyWith<$Res> {
  factory $ItemModelMostPopularCopyWith(ItemModelMostPopular value,
          $Res Function(ItemModelMostPopular) then) =
      _$ItemModelMostPopularCopyWithImpl<$Res, ItemModelMostPopular>;
  @useResult
  $Res call({@JsonKey(name: 'body') String content});
}

/// @nodoc
class _$ItemModelMostPopularCopyWithImpl<$Res,
        $Val extends ItemModelMostPopular>
    implements $ItemModelMostPopularCopyWith<$Res> {
  _$ItemModelMostPopularCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemModelMostPopularCopyWith<$Res>
    implements $ItemModelMostPopularCopyWith<$Res> {
  factory _$$_ItemModelMostPopularCopyWith(_$_ItemModelMostPopular value,
          $Res Function(_$_ItemModelMostPopular) then) =
      __$$_ItemModelMostPopularCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'body') String content});
}

/// @nodoc
class __$$_ItemModelMostPopularCopyWithImpl<$Res>
    extends _$ItemModelMostPopularCopyWithImpl<$Res, _$_ItemModelMostPopular>
    implements _$$_ItemModelMostPopularCopyWith<$Res> {
  __$$_ItemModelMostPopularCopyWithImpl(_$_ItemModelMostPopular _value,
      $Res Function(_$_ItemModelMostPopular) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_ItemModelMostPopular(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModelMostPopular implements _ItemModelMostPopular {
  _$_ItemModelMostPopular(@JsonKey(name: 'body') this.content);

  factory _$_ItemModelMostPopular.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelMostPopularFromJson(json);

  @override
  @JsonKey(name: 'body')
  final String content;

  @override
  String toString() {
    return 'ItemModelMostPopular(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModelMostPopular &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemModelMostPopularCopyWith<_$_ItemModelMostPopular> get copyWith =>
      __$$_ItemModelMostPopularCopyWithImpl<_$_ItemModelMostPopular>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelMostPopularToJson(
      this,
    );
  }
}

abstract class _ItemModelMostPopular implements ItemModelMostPopular {
  factory _ItemModelMostPopular(@JsonKey(name: 'body') final String content) =
      _$_ItemModelMostPopular;

  factory _ItemModelMostPopular.fromJson(Map<String, dynamic> json) =
      _$_ItemModelMostPopular.fromJson;

  @override
  @JsonKey(name: 'body')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelMostPopularCopyWith<_$_ItemModelMostPopular> get copyWith =>
      throw _privateConstructorUsedError;
}
