import 'package:dio/dio.dart';

class RemoteDataSource {
  Future<dynamic> fetchData() async {
    try {
      final response = await Dio().get(
          'https://api.nasa.gov/planetary/apod?api_key=EQfJ8ec4u9Q67mx7s3Ti69aSpp6xho6hJBKGcyA5&thumbs=true');
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
