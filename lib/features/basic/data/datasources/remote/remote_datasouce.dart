abstract class RemoteDatasource<Model> {
  Future<List<Model>> getModels({String? name});
  Future<Model?> getModelById({required int id});
}
