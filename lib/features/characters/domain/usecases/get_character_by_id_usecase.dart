import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/basic/domain/repositories/repository.dart';

class GetCharacterByIdUsecase {
  final Repository<Character> repository;
  GetCharacterByIdUsecase({required this.repository});

  Future<Character?> call({required int id}) async {
    return await repository.getEntityById(id: id);
  }
}
