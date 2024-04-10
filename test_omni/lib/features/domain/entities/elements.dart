import 'package:equatable/equatable.dart';

class ElementsEntity extends Equatable {
  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;

  const ElementsEntity(
      {this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  @override
  List<Object?> get props {
    return [albumId, id, title, url, thumbnailUrl];
  }
}
