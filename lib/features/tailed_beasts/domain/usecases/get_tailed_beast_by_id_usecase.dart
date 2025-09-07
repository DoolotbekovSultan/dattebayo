import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';
import 'package:dattebayo/features/tailed_beasts/domain/repositories/tailed_beasts_repository.dart';

class GetTailedBeastByIdUsecase {
  final TailedBeastsRepository repository;
  GetTailedBeastByIdUsecase({required this.repository});

  Future<TailedBeast?> call({required id}) async =>
      await repository.getTailedBeastByID(id: id);
}
