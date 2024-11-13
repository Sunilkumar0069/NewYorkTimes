// ignore_for_file: unnecessary_question_mark

import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class HotUpdatesBO {
  String? status;
  String? copyright;

  @JsonProperty(name: "num_results")
  num? numResults;
@JsonProperty(name: "results")
  List<HotResults>? hotResults;

  HotUpdatesBO({
    this.status,
    this.copyright,
    this.numResults,
    this.hotResults,
  });
}

@jsonSerializable
class HotResults {
  @JsonProperty(name: "uri")
  String? mainUri;
  @JsonProperty(name: "url")
  String? subUrl;
  num? id;

  @JsonProperty(name: "asset_id")
  num? assetId;

  String? source;

  @JsonProperty(name: "published_date")
  String? publishedDate;

  String? updated;
  String? section;
  String? subsection;
  String? nytdsection;

  @JsonProperty(name: "adx_keywords")
  String? adxKeywords;

  Null? column;
  String? byline;
  String? type;
  String? title;
  String? abstract;
  @JsonProperty(name: "des_facet")
  List<String>? desFacet;
  @JsonProperty(name: "org_facet")
  List<String>? orgFacet;
  @JsonProperty(name: "per_facet")
  List<String>? perFacet;
  @JsonProperty(name: "geo_facet")
  List<String>? geoFacet;
  List<Media>? media;

  @JsonProperty(name: "eta_id")
  num? etaId;

  HotResults({
    this.mainUri,
    this.subUrl,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.abstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId,
  });
}

@jsonSerializable
class Media {
  String? type;
  String? subtype;
  String? caption;
  String? copyright;

  @JsonProperty(name: "approved_for_syndication")
  num? approvedForSyndication;

  @JsonProperty(name: "media-metadata")
  List<MediaMetadata>? mediaMetadata;

  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approvedForSyndication,
    this.mediaMetadata,
  });
}

@jsonSerializable
class MediaMetadata {
  String? url;
  String? format;
  num? height;
  num? width;

  MediaMetadata({
    this.url,
    this.format,
    this.height,
    this.width,
  });
}
