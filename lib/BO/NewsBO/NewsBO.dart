import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class NewsBO {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  NewsBO({this.status, this.totalResults, this.articles});
}
@jsonSerializable
class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});
}
@jsonSerializable
class Source {
  String? id;
  String? name;

  Source({this.id, this.name});
}
