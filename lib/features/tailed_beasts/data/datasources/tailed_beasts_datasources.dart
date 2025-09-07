import 'package:dattebayo/features/tailed_beasts/data/models/tailed_beast/main/tailed_beast_model.dart';

abstract class TailedBeastsDatasources {
  Future<List<TailedBeastModel>> getTailedBeastModels({String? name});
  Future<TailedBeastModel?> getTailedBeastModelById({required int id});
}
