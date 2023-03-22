// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryPageState {
  List<ItemModelLibrary> get items => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryPageStateCopyWith<LibraryPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryPageStateCopyWith<$Res> {
  factory $LibraryPageStateCopyWith(
          LibraryPageState value, $Res Function(LibraryPageState) then) =
      _$LibraryPageStateCopyWithImpl<$Res, LibraryPageState>;
  @useResult
  $Res call(
      {List<ItemModelLibrary> items, bool isLoading, String errorMessage});
}

/// @nodoc
class _$LibraryPageStateCopyWithImpl<$Res, $Val extends LibraryPageState>
    implements $LibraryPageStateCopyWith<$Res> {
  _$LibraryPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModelLibrary>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LibraryPageStateCopyWith<$Res>
    implements $LibraryPageStateCopyWith<$Res> {
  factory _$$_LibraryPageStateCopyWith(
          _$_LibraryPageState value, $Res Function(_$_LibraryPageState) then) =
      __$$_LibraryPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ItemModelLibrary> items, bool isLoading, String errorMessage});
}

/// @nodoc
class __$$_LibraryPageStateCopyWithImpl<$Res>
    extends _$LibraryPageStateCopyWithImpl<$Res, _$_LibraryPageState>
    implements _$$_LibraryPageStateCopyWith<$Res> {
  __$$_LibraryPageStateCopyWithImpl(
      _$_LibraryPageState _value, $Res Function(_$_LibraryPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_LibraryPageState(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModelLibrary>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LibraryPageState implements _LibraryPageState {
  const _$_LibraryPageState(
      {final List<ItemModelLibrary> items = const [],
      this.isLoading = false,
      this.errorMessage = ''})
      : _items = items;

  final List<ItemModelLibrary> _items;
  @override
  @JsonKey()
  List<ItemModelLibrary> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'LibraryPageState(items: $items, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryPageState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LibraryPageStateCopyWith<_$_LibraryPageState> get copyWith =>
      __$$_LibraryPageStateCopyWithImpl<_$_LibraryPageState>(this, _$identity);
}

abstract class _LibraryPageState implements LibraryPageState {
  const factory _LibraryPageState(
      {final List<ItemModelLibrary> items,
      final bool isLoading,
      final String errorMessage}) = _$_LibraryPageState;

  @override
  List<ItemModelLibrary> get items;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryPageStateCopyWith<_$_LibraryPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
