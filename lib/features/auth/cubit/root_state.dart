part of 'root_cubit.dart';

@freezed
class RootState with _$RootState {
  const factory RootState({
    User? user,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _RootState;
}


//class RootState {
  //final User? user;
  //final bool isLoading;
  //final String errorMessage;

  //const RootState({
    //required this.user,
    //required this.isLoading,
    //required this.errorMessage,
  //});
//}
