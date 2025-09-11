class BaseRepository {
  Future<ModelData> getModelData<ModelData>({
    required Future<ModelData> Function() route,
    required Future<ModelData> Function() local,
    required void Function(ModelData) casheModelData,
  }) async {
    try {
      ModelData modelData = await route();
      casheModelData(modelData);
      return modelData;
    } catch (e) {
      return await local();
    }
  }
}
