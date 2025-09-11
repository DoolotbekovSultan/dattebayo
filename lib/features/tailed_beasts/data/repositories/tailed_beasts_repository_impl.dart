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
      () => routeDatasource.getModels(name: name),
      () => localDatasource.getModels(name: name),
    );
    return models.toEntities();
  }

  @override
  Future<TailedBeast?> getEntityById({required int id}) async {
    final model = await getModelData(
      () => routeDatasource.getModelById(id: id),
      () => localDatasource.getModelById(id: id),
    );
    return model?.toEntity();
  }
}
