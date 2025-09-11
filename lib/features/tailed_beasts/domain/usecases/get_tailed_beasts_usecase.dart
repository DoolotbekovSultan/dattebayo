import 'package:dattebayo/features/basic/domain/repositories/repository.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';

class GetTailedBeastsUsecase {
  final Repository<TailedBeast> repository;
  GetTailedBeastsUsecase({required this.repository});

  Future<List<TailedBeast>> call({String? name}) async =>
      await repository.getEntities(name: name);
}
