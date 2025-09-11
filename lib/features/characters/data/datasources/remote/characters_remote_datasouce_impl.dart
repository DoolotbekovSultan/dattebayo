import 'package:dattebayo/core/network/api_service.dart';
import 'package:dattebayo/features/basic/data/datasources/remote/base_remote_datasources.dart';
import 'package:dattebayo/features/basic/data/datasources/remote/remote_datasouce.dart';
import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';

class CharactersRemoteDatasourceImpl extends BaseRemoteDatasource
    implements RemoteDatasource<CharacterModel> {
  final ApiService apiService;

  CharactersRemoteDatasourceImpl({required this.apiService});

  @override
  Future<List<CharacterModel>> getModels({String? name}) async =>
      getModelData(apiService.getCharactersResponse(name: name), (data) {
        final List<dynamic> json = data['characters'] as List;
        return json
            .map((jsonObject) => CharacterModel.fromJson(jsonObject))
            .toList();
      });

  @override
  Future<CharacterModel?> getModelById({required int id}) async => getModelData(
    apiService.getCharacterByIdResponse(id: id.toString()),
    (data) => CharacterModel.fromJson(data),
  );
}
