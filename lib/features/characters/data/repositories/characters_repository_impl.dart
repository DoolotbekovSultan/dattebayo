import 'package:dattebayo/features/characters/data/models/utils/extentions.dart';
import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/domain/repositories/characters_repository.dart';
import 'package:dattebayo/features/characters/data/datasources/characters_datasouces.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersDataSources dataSources;
  CharactersRepositoryImpl({required this.dataSources});
  @override
  Future<List<Character>> getCharacters({String? name}) async {
    final models = await dataSources.getCharacterModels(name: name);
    return models.toEntities();
  }

  @override
  Future<Character?> getCharacterById({required int id}) async {
    final model = await dataSources.getCharacterModelById(id: id);
    return model?.toEntity();
  }
}
