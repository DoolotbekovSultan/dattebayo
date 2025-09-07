import 'package:dattebayo/core/network/api_service.dart';
import 'package:dattebayo/features/tailed_beasts/data/datasources/tailed_beasts_datasources.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';
import 'package:dio/dio.dart';

class TailedBeastsDatasourcesImpl extends TailedBeastsDatasources {
  final ApiService apiService;

  TailedBeastsDatasourcesImpl({required this.apiService});

  @override
  Future<List<TailedBeastModel>> getTailedBeastModels({String? name}) async {
    final Response response = await apiService.getTailedBeastsResponse(
      name: name,
    );
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> data = response.data;
        final List<dynamic> json = data['tailed-beasts'] as List;
        return json
            .map((jsonObject) => TailedBeastModel.fromJson(jsonObject))
            .toList();
      } catch (e, stack) {
        print(e);
        print(stack);
        throw Exception('Failed to load tailed-beasts');
      }
    } else {
      throw Exception('Failed to load tailed-beasts');
    }
  }

  @override
  Future<TailedBeastModel?> getTailedBeastModelById({required int id}) async {
    final Response response = await apiService.getTailedBeastsByIdResponse(
      id: id.toString(),
    );
    if (response.statusCode == 200) {
      return TailedBeastModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load tailed-beast');
    }
  }
}
