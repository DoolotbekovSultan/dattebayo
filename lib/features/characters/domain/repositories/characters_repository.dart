import 'package:dattebayo/features/characters/domain/entities/character/character.dart';

abstract class CharactersRepository {
  Future<List<Character>> getCharacters({String? name});
  Future<Character?> getCharacterById({required int id});
}
