import 'package:flutter/material.dart';
import 'package:test_omni/features/domain/entities/elements.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ElementsModel extends ElementsEntity {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const ElementsModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory ElementsModel.fromJson(Map<String, dynamic> json) {
    return ElementsModel(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
  // const ElementsModel({
  //   final int? albumId,
  //   final int? id,
  //   final String? title,
  //   final String? url,
  //   final String? thumbnailUrl,
  // });

  // factory ElementsModel.fromJson(Map<String, dynamic> map) {
  //   debugPrint(map["albumId"]["value"]);
  //   debugPrint(map["id"]);
  //   debugPrint(map["title"]);
  //   debugPrint(map["url"]);
  //   return ElementsModel(
  //     albumId: map["albumId"] ?? 0,
  //     id: map["id"] ?? 0,
  //     title: map["title"] ?? "",
  //     url: map["url"] ?? "",
  //     thumbnailUrl: map["thumbnailUrl"] ?? "",
  //   );
  // }
}
