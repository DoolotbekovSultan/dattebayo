import 'package:dattebayo/features/basic/data/datasources/local/local_datasource.dart';
import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';
import 'package:hive/hive.dart';

class TailedBeastLocalDatasourceImpl
    implements LocalDatasource<TailedBeastModel> {
  final boxKey = "tailed-beasts";

  @override
  Future<void> casheModel({required TailedBeastModel model}) async {
    final box = await openBox();
    box.put(model.id.toString(), model);
  }

  @override
  Future<TailedBeastModel?> getModelById({required int id}) async {
    final box = await openBox();
    return box.get(id.toString());
  }

  @override
  Future<List<TailedBeastModel>> getModels({String? name}) async {
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
  Future<Box<TailedBeastModel>> openBox() async {
    if (!Hive.isBoxOpen(boxKey)) {
      return Hive.openBox<TailedBeastModel>(boxKey);
    }
    return Hive.box<TailedBeastModel>(boxKey);
  }
}
