part of 'most_popular_cubit.dart';

class MostPopularState {
  const MostPopularState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
  final ItemModelMostPopular? model;
  final Status status;
  final String? errorMessage;
}
