import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class TopStoriesBO {
  String? status;
  String? copyright;
  String? section;

  @JsonProperty(name: "last_updated")
  String? lastUpdated;

  @JsonProperty(name: "num_results")
  num? numResults;
  List<Results>? results;

  TopStoriesBO(
      {this.status,
      this.copyright,
      this.section,
      this.lastUpdated,
      this.numResults,
      this.results});
}

@jsonSerializable
class Results {
  String? section;
  String? subsection;
  String? title;
  String? abstract;
  String? url;
  String? uri;
  String? byline;

  @JsonProperty(name: "item_type")
  String? itemType;

  @JsonProperty(name: "updated_date")
  String? updatedDate;

  @JsonProperty(name: "created_date")
  String? createdDate;

  @JsonProperty(name: "published_date")
  String? publishedDate;

  @JsonProperty(name: "material_type_facet")
  String? materialTypeFacet;
  String? kicker;

  @JsonProperty(name: "des_facet")
  List<String>? desFacet;

  @JsonProperty(name: "org_facet")
  List<String>? orgFacet;

  @JsonProperty(name: "per_facet")
  List<String>? perFacet;

  @JsonProperty(name: "geo_facet")
  List<String>? geoFacet;
  List<Multimedia>? multimedia;

  @JsonProperty(name: "short_url")
  String? shortUrl;

  Results({
    this.section,
    this.subsection,
    this.title,
    this.abstract,
    this.url,
    this.uri,
    this.byline,
    this.itemType,
    this.updatedDate,
    this.createdDate,
    this.publishedDate,
    this.materialTypeFacet,
    this.kicker,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.multimedia,
    this.shortUrl,
  });
}

@jsonSerializable
class Multimedia {
  String? url;
  String? format;
  num? height;
  num? width;
  String? type;
  String? subtype;
  String? caption;
  String? copyright;

  Multimedia({
    this.url,
    this.format,
    this.height,
    this.width,
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
  });
}
