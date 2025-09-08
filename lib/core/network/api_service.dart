import 'package:dattebayo/core/utils/constants/url.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<Response> getReponse({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await dio.get(
        '$baseUrl$endpoint',
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Characters
  Future<Response> getCharactersResponse({String? name}) async {
    return await getReponse(
      endpoint: charactersEndpoint,
      queryParameters: name != null ? {'name': name} : null,
    );
  }

  Future<Response> getCharacterByIdResponse({required String id}) async {
    return await getReponse(endpoint: '$charactersEndpoint/$id');
  }

  // Tailed-beasts
  Future<Response> getTailedBeastsResponse({String? name}) async {
    return await getReponse(
      endpoint: tailedBeastsEndpoint,
      queryParameters: name != null ? {"name": name} : null,
    );
  }

  Future<Response> getTailedBeastsByIdResponse({required String id}) async {
    return await getReponse(endpoint: "$tailedBeastsEndpoint/$id");
  }
}
