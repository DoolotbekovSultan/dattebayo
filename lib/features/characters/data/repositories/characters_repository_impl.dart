import 'package:dattebayo/features/basic/data/datasources/local/local_datasource.dart';
import 'package:dattebayo/features/basic/data/repositories/base_repository.dart';
import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';
import 'package:dattebayo/features/characters/data/models/utils/extentions.dart';
import 'package:dattebayo/features/characters/domain/entities/character/character.dart';
import 'package:dattebayo/features/basic/domain/repositories/repository.dart';
import 'package:dattebayo/features/basic/data/datasources/remote/remote_datasouce.dart';

class CharactersRepositoryImpl extends BaseRepository
    implements Repository<Character> {
  final RemoteDatasource<CharacterModel> routeDatasource;
  final LocalDatasource<CharacterModel> localDatasource;

  CharactersRepositoryImpl({
    required this.routeDatasource,
    required this.localDatasource,
  });

  @override
  Future<List<Character>> getEntities({String? name}) async {
    final models = await getModelData<List<CharacterModel>>(
      route: () => routeDatasource.getModels(name: name),
      local: () => localDatasource.getModels(name: name),
      casheModelData: (models) {
        localDatasource.casheModels(models: models);
      },
    );
    return models.toEntities();
  }

  @override
  Future<Character?> getEntityById({required int id}) async {
    final model = await getModelData<CharacterModel?>(
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
