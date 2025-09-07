import 'package:dattebayo/core/network/api_service.dart';
import 'package:dattebayo/features/characters/data/datasources/characters_datasouces.dart';
import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';
import 'package:dio/dio.dart';

class CharactersDataSourcesImpl implements CharactersDataSources {
  final ApiService apiService;

  CharactersDataSourcesImpl({required this.apiService});

  @override
  Future<List<CharacterModel>> getCharacterModels({String? name}) async {
    final Response response = await apiService.getCharactersResponse(
      name: name,
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = response.data;
      final List<dynamic> json = data['characters'] as List;
      return json
          .map((jsonObject) => CharacterModel.fromJson(jsonObject))
          .toList();
    } else {
      throw Exception('Failed to load characters');
    }
  }

  @override
  Future<CharacterModel?> getCharacterModelById({required int id}) async {
    final Response response = await apiService.getCharacterByIdResponse(
      id: id.toString(),
    );
    if (response.statusCode == 200) {
      return CharacterModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load character');
    }
  }
}
