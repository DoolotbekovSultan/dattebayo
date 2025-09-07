import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';
import 'package:dattebayo/features/tailed_beasts/domain/repositories/tailed_beasts_repository.dart';

class GetTailedBeastsUsecase {
  final TailedBeastsRepository repository;
  GetTailedBeastsUsecase({required this.repository});

  Future<List<TailedBeast>> call({String? name}) async =>
      await repository.getTailedBeasts(name: name);
}
