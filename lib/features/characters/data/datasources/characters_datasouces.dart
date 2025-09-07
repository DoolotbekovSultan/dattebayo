import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';

abstract class CharactersDataSources {
  Future<List<CharacterModel>> getCharacterModels({String? name});
  Future<CharacterModel?> getCharacterModelById({required int id});
}
