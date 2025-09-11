import 'package:dattebayo/features/basic/domain/repositories/repository.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';

class GetTailedBeastByIdUsecase {
  final Repository<TailedBeast> repository;
  GetTailedBeastByIdUsecase({required this.repository});

  Future<TailedBeast?> call({required id}) async =>
      await repository.getEntityById(id: id);
}
