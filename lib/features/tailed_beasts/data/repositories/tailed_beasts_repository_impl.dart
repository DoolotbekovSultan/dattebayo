import 'package:dattebayo/features/basic/data/datasources/local/local_datasource.dart';
import 'package:dattebayo/features/basic/data/repositories/base_repository.dart';
import 'package:dattebayo/features/basic/domain/repositories/repository.dart';
import 'package:dattebayo/features/basic/data/datasources/remote/remote_datasouce.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/utils/extentions.dart';
import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';

class TailedBeastsRepositoryImpl extends BaseRepository
    implements Repository<TailedBeast> {
  final RemoteDatasource<TailedBeastModel> routeDatasource;
  final LocalDatasource<TailedBeastModel> localDatasource;

  TailedBeastsRepositoryImpl({
    required this.routeDatasource,
    required this.localDatasource,
  });

  @override
  Future<List<TailedBeast>> getEntities({String? name}) async {
    final models = await getModelData<List<TailedBeastModel>>(
      route: () => routeDatasource.getModels(name: name),
      local: () => localDatasource.getModels(name: name),
      casheModelData: (models) {
        localDatasource.casheModels(models: models);
      },
    );
    return models.toEntities();
  }

  @override
  Future<TailedBeast?> getEntityById({required int id}) async {
    final model = await getModelData<TailedBeastModel?>(
      route: () => routeDatasource.getModelById(id: id),
      local: () => localDatasource.getModelById(id: id),
      casheModelData: (model) {
        if (model != null) {
          localDatasource.casheModel(model: model);
        }
      },
    );
    return model?.toEntity();
  }
}
