import 'package:dattebayo/features/tailed_beasts/domain/entities/tailed_beast.dart';

abstract class TailedBeastsRepository {
  Future<List<TailedBeast>> getTailedBeasts({String? name});
  Future<TailedBeast?> getTailedBeastByID({required int id});
}
