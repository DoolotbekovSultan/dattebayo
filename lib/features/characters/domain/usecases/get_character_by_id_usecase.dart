import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/characters/domain/repositories/characters_repository.dart';

class GetCharacterByIdUsecase {
  final CharactersRepository repository;
  GetCharacterByIdUsecase({required this.repository});

  Future<Character?> call({required int id}) async {
    return await repository.getCharacterById(id: id);
  }
}
