class BaseRepository {
  Future<ModelData> getModelData<ModelData>(
    Future<ModelData> Function() route,
    Future<ModelData> Function() local,
  ) async {
    try {
      return await route();
    } catch (e) {
      return await local();
    }
  }
}
