import 'package:retrofit/retrofit.dart';
// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:test_omni/core/constants/constants.dart';
import 'package:test_omni/features/data/models/elements.model.dart';
part 'elements_api_service.g.dart';

@RestApi(baseUrl: elementsApiBaseUrl)
abstract class ElementsApiService {
  factory ElementsApiService(Dio dio) = _ElementsApiService;

  @GET('/photos')
  Future<HttpResponse<List<ElementsModel>>> getElements();
}
