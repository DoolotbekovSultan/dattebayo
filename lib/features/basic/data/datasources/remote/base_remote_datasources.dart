import 'package:dio/dio.dart';

class BaseRemoteDatasource {
  Future<Model> getModelData<Model>(
    Future<Response> futureResponse,
    Model Function(dynamic data) fromJson,
  ) async {
    final response = await futureResponse;
    try {
      switch (response.statusCode) {
        case 200:
          return fromJson(response.data);
        case 404:
          throw Exception("Ресурс не найден (404)");
        case 500:
          throw Exception("Внутрення ошибка сервера (500)");
        default:
          throw Exception(
            "Ошибка сети: код ${response.statusCode}, сообщение ${response.statusMessage}",
          );
      }
    } on DioException catch (e) {
      throw Exception("Ошибка запроса: ${e.message}");
    } catch (e) {
      throw Exception("Неизвестная ошибка: $e");
    }
  }
}
