import 'package:dattebayo/core/network/api_service.dart';
import 'package:dattebayo/features/basic/data/datasources/base_datasources.dart';
import 'package:dattebayo/features/tailed_beasts/data/datasources/tailed_beasts_datasources.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';

class TailedBeastsDatasourcesImpl extends BaseDatasources
    implements TailedBeastsDatasources {
  final ApiService apiService;

  TailedBeastsDatasourcesImpl({required this.apiService});

  @override
  Future<List<TailedBeastModel>> getTailedBeastModels({String? name}) async =>
      getModelData(apiService.getTailedBeastsResponse(name: name), (data) {
        final List<dynamic> json = data['tailed-beasts'] as List;
        return json
            .map((jsonObject) => TailedBeastModel.fromJson(jsonObject))
            .toList();
      });

  @override
  Future<TailedBeastModel?> getTailedBeastModelById({required int id}) async =>
      getModelData(
        apiService.getTailedBeastsByIdResponse(id: id.toString()),
        (data) => TailedBeastModel.fromJson(data),
      );
}
