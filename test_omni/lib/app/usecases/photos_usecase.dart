abstract class PhotosUseCase<Type, Params> {
  Future<List<Type>> execute(Params params);
}
