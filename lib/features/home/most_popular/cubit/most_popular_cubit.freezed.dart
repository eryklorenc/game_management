// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'most_popular_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MostPopularState {
  ItemModelMostPopular? get model => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MostPopularStateCopyWith<MostPopularState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostPopularStateCopyWith<$Res> {
  factory $MostPopularStateCopyWith(
          MostPopularState value, $Res Function(MostPopularState) then) =
      _$MostPopularStateCopyWithImpl<$Res, MostPopularState>;
  @useResult
  $Res call({ItemModelMostPopular? model, Status status, String? errorMessage});

  $ItemModelMostPopularCopyWith<$Res>? get model;
}

/// @nodoc
class _$MostPopularStateCopyWithImpl<$Res, $Val extends MostPopularState>
    implements $MostPopularStateCopyWith<$Res> {
  _$MostPopularStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ItemModelMostPopular?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemModelMostPopularCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ItemModelMostPopularCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MostPopularStateCopyWith<$Res>
    implements $MostPopularStateCopyWith<$Res> {
  factory _$$_MostPopularStateCopyWith(
          _$_MostPopularState value, $Res Function(_$_MostPopularState) then) =
      __$$_MostPopularStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemModelMostPopular? model, Status status, String? errorMessage});

  @override
  $ItemModelMostPopularCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_MostPopularStateCopyWithImpl<$Res>
    extends _$MostPopularStateCopyWithImpl<$Res, _$_MostPopularState>
    implements _$$_MostPopularStateCopyWith<$Res> {
  __$$_MostPopularStateCopyWithImpl(
      _$_MostPopularState _value, $Res Function(_$_MostPopularState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_MostPopularState(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ItemModelMostPopular?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MostPopularState implements _MostPopularState {
  const _$_MostPopularState(
      {this.model, this.status = Status.initial, this.errorMessage});

  @override
  final ItemModelMostPopular? model;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MostPopularState(model: $model, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MostPopularState &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MostPopularStateCopyWith<_$_MostPopularState> get copyWith =>
      __$$_MostPopularStateCopyWithImpl<_$_MostPopularState>(this, _$identity);
}

abstract class _MostPopularState implements MostPopularState {
  const factory _MostPopularState(
      {final ItemModelMostPopular? model,
      final Status status,
      final String? errorMessage}) = _$_MostPopularState;

  @override
  ItemModelMostPopular? get model;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MostPopularStateCopyWith<_$_MostPopularState> get copyWith =>
      throw _privateConstructorUsedError;
}
