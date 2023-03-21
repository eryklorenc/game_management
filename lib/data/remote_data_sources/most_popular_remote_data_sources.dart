import 'package:dio/dio.dart';

class MostPopularRemoteDataSource {
  Future<Map<String,dynamic>?> getDataMostPopular() async {
    final response = await Dio().get<Map<String, dynamic>>(
        'https://jsonplaceholder.typicode.com/posts/1');
    return response.data;

  }
}
