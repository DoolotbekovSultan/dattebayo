abstract class Repository<Entity> {
  Future<List<Entity>> getEntities({String? name});
  Future<Entity?> getEntityById({required int id});
}
