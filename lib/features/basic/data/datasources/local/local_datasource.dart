import 'package:hive/hive.dart';

abstract class LocalDatasource<Model> {
  Future<Box<Model>> openBox();
  Future<void> casheModel({required Model model});
  Future<List<Model>> getModels({String? name});
  Future<Model?> getModelById({required int id});
}
