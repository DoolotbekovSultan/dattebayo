import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/domain/repositories/characters_repository.dart';

class GetCharactersUsecase {
  final CharactersRepository repository;
  GetCharactersUsecase({required this.repository});

  Future<List<Character>> call({String? name}) async =>
      await repository.getCharacters(name: name);
}
