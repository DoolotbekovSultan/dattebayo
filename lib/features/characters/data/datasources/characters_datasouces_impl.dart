import 'package:dattebayo/core/network/api_service.dart';
import 'package:dattebayo/features/basic/data/datasources/base_datasources.dart';
import 'package:dattebayo/features/characters/data/datasources/characters_datasouces.dart';
import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';

class CharactersDataSourcesImpl extends BaseDatasources
    implements CharactersDataSources {
  final ApiService apiService;

  CharactersDataSourcesImpl({required this.apiService});

  @override
  Future<List<CharacterModel>> getCharacterModels({String? name}) async =>
      getModelData(apiService.getCharactersResponse(name: name), (data) {
        final List<dynamic> json = data['characters'] as List;
        return json
            .map((jsonObject) => CharacterModel.fromJson(jsonObject))
            .toList();
      });

  @override
  Future<CharacterModel?> getCharacterModelById({required int id}) async =>
      getModelData(
        apiService.getCharacterByIdResponse(id: id.toString()),
        (data) => CharacterModel.fromJson(data),
      );
}
