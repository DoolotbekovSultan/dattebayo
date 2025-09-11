import 'package:dattebayo/core/network/api_service.dart';
import 'package:dattebayo/features/basic/data/datasources/remote/base_remote_datasources.dart';
import 'package:dattebayo/features/basic/data/datasources/remote/remote_datasouce.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';

class TailedBeastsRemoteDatasourceImpl extends BaseRemoteDatasource
    implements RemoteDatasource<TailedBeastModel> {
  final ApiService apiService;

  TailedBeastsRemoteDatasourceImpl({required this.apiService});

  @override
  Future<List<TailedBeastModel>> getModels({String? name}) async =>
      getModelData(apiService.getTailedBeastsResponse(name: name), (data) {
        final List<dynamic> json = data['tailed-beasts'] as List;
        return json
            .map((jsonObject) => TailedBeastModel.fromJson(jsonObject))
            .toList();
      });

  @override
  Future<TailedBeastModel?> getModelById({required int id}) async =>
      getModelData(
        apiService.getTailedBeastsByIdResponse(id: id.toString()),
        (data) => TailedBeastModel.fromJson(data),
      );
}
