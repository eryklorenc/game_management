part of 'most_popular_cubit.dart';

@freezed
class MostPopularState with _$MostPopularState {
  const factory MostPopularState({
    ItemModelMostPopular? model,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _MostPopularState;
}

//class MostPopularState {
 // const MostPopularState({
   // this.model,
    //this.status = Status.initial,
    //this.errorMessage,
  //});
  //final ItemModelMostPopular? model;
  //final Status status;
  //final String? errorMessage;
//}
