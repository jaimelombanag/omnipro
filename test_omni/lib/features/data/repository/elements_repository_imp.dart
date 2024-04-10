import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:test_omni/core/resources/data_states.dart';
import 'package:test_omni/features/data/models/elements.model.dart';
import 'package:test_omni/features/domain/repository/elements_repository.dart';
import 'package:http/http.dart' as http;

class ElementsRepositoryImpl implements ElementsRepository {
  @override
  Future<DataStates<List<ElementsModel>>> getElements() async {
    try {
      var client = http.Client();
      final response = await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

      final lista = await compute(parsePhotos, response.body);

      if (response.statusCode == HttpStatus.ok) {
        return DataSuccess(lista);
      } else {
        return DataFailed(response.statusCode);
      }
    } catch (e) {
      return const DataFailed(0);
    }
  }

// A function that converts a response body into a List<Photo>.
  List<ElementsModel> parsePhotos(String responseBody) {
    final parsed =
        (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();

    return parsed
        .map<ElementsModel>((json) => ElementsModel.fromJson(json))
        .toList();
  }
}
