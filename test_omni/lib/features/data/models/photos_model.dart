import 'dart:convert';

import 'package:test_omni/features/domain/entities/photos.dart';

class PhotosModel extends Photos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  PhotosModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  }) : super(albumId: 0, id: 0, title: '', url: '', thumbnailUrl: '');

  factory PhotosModel.fromRawJson(String str) =>
      PhotosModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PhotosModel.fromJson(Map<String, dynamic> json) => PhotosModel(
        albumId: json["albumId"] ?? 0,
        id: json["id"] ?? 0,
        title: json["title"] ?? '',
        url: json["url"] ?? '',
        thumbnailUrl: json["thumbnailUrl"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
