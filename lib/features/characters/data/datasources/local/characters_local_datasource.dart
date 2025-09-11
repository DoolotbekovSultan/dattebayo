import 'package:dattebayo/features/basic/data/datasources/local/local_datasource.dart';
import 'package:dattebayo/features/characters/data/models/character/main/character_model.dart';
import 'package:hive/hive.dart';

class CharactersLocalDatasourceImpl implements LocalDatasource<CharacterModel> {
  final boxKey = "characters";

  @override
  Future<void> casheModel({required CharacterModel model}) async {
    final box = await openBox();
    box.put(model.id.toString(), model);
  }

  @override
  Future<void> casheModels({required List<CharacterModel> models}) async {
    for (var model in models) {
      casheModel(model: model);
    }
  }

  @override
  Future<CharacterModel?> getModelById({required int id}) async {
    final box = await openBox();
    return box.get(id.toString());
  }

  @override
  Future<List<CharacterModel>> getModels({String? name}) async {
    final box = await openBox();
    if (name != null) {
      return box.values
          .where(
            (entity) => entity.name != null
                ? entity.name!.toLowerCase().contains(name.toLowerCase())
                : false,
          )
          .toList();
    } else {
      return box.values.toList();
    }
  }

  @override
  Future<Box<CharacterModel>> openBox() async {
    if (!Hive.isBoxOpen(boxKey)) {
      return Hive.openBox<CharacterModel>(boxKey);
    }
    return Hive.box<CharacterModel>(boxKey);
  }
}
