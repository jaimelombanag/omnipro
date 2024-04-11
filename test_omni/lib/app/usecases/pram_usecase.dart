abstract class ParamUseCase<Type, Params> {
  Future<List<Type>> execute(Params params);
}
