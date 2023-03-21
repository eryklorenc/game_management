import 'package:dio/dio.dart';

class MostPopularRemoteDataSource {
  Future<Map<String, dynamic>?> getDataMostPopular() async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'https://jsonplaceholder.typicode.com/posts/1');
      return response.data;
    } on DioError catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unknown error');
    }
  }
}
