import 'package:dattebayo/features/tailed_beasts/data/datasources/tailed_beasts_datasources.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/utils/extentions.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';
import 'package:dattebayo/features/tailed_beasts/domain/repositories/tailed_beasts_repository.dart';

class TailedBeastsRepositoryImpl implements TailedBeastsRepository {
  final TailedBeastsDatasources dataSources;
  const TailedBeastsRepositoryImpl({required this.dataSources});
  @override
  Future<List<TailedBeast>> getTailedBeasts({String? name}) async {
    final models = await dataSources.getTailedBeastModels(name: name);
    return models.toEntities();
  }

  @override
  Future<TailedBeast?> getTailedBeastByID({required int id}) async {
    final model = await dataSources.getTailedBeastModelById(id: id);
    return model?.toEntity();
  }
}
