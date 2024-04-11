import 'dart:convert';

import 'package:test_omni/features/domain/entities/paging.dart';

class PagingModel extends Paging {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  PagingModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  }) : super(albumId: 0, id: 0, title: '', url: '', thumbnailUrl: '');

  factory PagingModel.fromRawJson(String str) =>
      PagingModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PagingModel.fromJson(Map<String, dynamic> json) => PagingModel(
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
