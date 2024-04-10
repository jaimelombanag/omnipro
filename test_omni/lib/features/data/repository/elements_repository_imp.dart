import 'dart:io';
import 'package:dio/dio.dart';
import 'package:test_omni/core/resources/data_states.dart';
import 'package:test_omni/features/data/data_sources/remote/elements_api_service.dart';
import 'package:test_omni/features/data/models/elements.model.dart';
import 'package:test_omni/features/domain/repository/elements_repository.dart';

class ElementsRepositoryImpl implements ElementsRepository {
  final ElementsApiService _elementsApiService;
  ElementsRepositoryImpl(this._elementsApiService);
  @override
  Future<DataStates<List<ElementsModel>>> getElements() async {
    try {
      final httpResponse = await _elementsApiService.getElements();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioErrorType.badResponse,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
