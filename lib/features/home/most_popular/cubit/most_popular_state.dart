part of 'most_popular_cubit.dart';

@freezed
class MostPopularState with _$MostPopularState {
  const factory MostPopularState({
    ItemModelMostPopular? model,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _MostPopularState;
}

