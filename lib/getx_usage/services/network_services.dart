import 'package:dio/dio.dart';
import 'package:flutter_use_case_app/getx_usage/getx_model/memes.dart';

class NetworkServices {
  final String _baseUrl = "https://api.imgflip.com";
  final Dio _dio = Dio();

  NetworkServices() {
    _dio.options = BaseOptions(baseUrl: _baseUrl);
  }

  Future<Memes?> getMemes() async {
    final response = await _dio.get(_endPoints.getMemes.label);
 
    if (response.statusCode == 200) {
      final Memes memes = Memes.fromJson(response.data);
      return memes;
      
    }

    return null;
  }
}

// ignore: camel_case_types
enum _endPoints {
  getMemes("/get_memes");

  final String label;

  const _endPoints(this.label);
}
