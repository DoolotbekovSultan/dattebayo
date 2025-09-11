import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/basic/domain/repositories/repository.dart';

class GetCharactersUsecase {
  final Repository<Character> repository;
  GetCharactersUsecase({required this.repository});

  Future<List<Character>> call({String? name}) async =>
      await repository.getEntities(name: name);
}
