import 'package:test_omni/features/domain/entities/elements.dart';

class ElementsModel extends ElementsEntity {
  const ElementsModel({
    final String? albumId,
    final int? id,
    final String? title,
    final String? url,
    final String? thumbnailUrl,
  });

  factory ElementsModel.fromJson(Map<String, dynamic> map) {
    return ElementsModel(
      albumId: map['albumId'] ?? "",
      id: map['id'] ?? 0,
      title: map['title'] ?? "",
      url: map['url'] ?? "",
      thumbnailUrl: map['thumbnailUrl'] ?? "",
    );
  }
}
