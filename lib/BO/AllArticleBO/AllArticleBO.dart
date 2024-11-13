// ignore_for_file: unnecessary_question_mark

import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class AllArticleBO {
  String? status;
  String? copyright;
  @JsonProperty(name: "Response")
  Responses? response;

  AllArticleBO({this.status, this.copyright, this.response});
}

@jsonSerializable
class Responses {
  List<Docs>? docs;
  Meta? meta;

  Responses({this.docs, this.meta});
}

@jsonSerializable
class Docs {
  String? abstract;

  @JsonProperty(name: "web_url")
  String? webUrl;
  String? snippet;

  @JsonProperty(name: "lead_paragraph")
  String? leadParagraph;
  String? source;
  List<Multimedia>? multimedia;
  Headline? headline;
  List<Keywords>? keywords;

  @JsonProperty(name: "pub_date")
  String? pubDate;

  @JsonProperty(name: "document_type")
  String? documentType;

  @JsonProperty(name: "news_desk")
  String? newsDesk;

  @JsonProperty(name: "section_name")
  String? sectionName;

  @JsonProperty(name: "subsection_name")
  String? subsectionName;
  Byline? byline;

  @JsonProperty(name: "_id")
  String? sId;

  @JsonProperty(name: "word_count")
  int? wordCount;
  String? uri;

  Docs({
    this.abstract,
    this.webUrl,
    this.snippet,
    this.leadParagraph,
    this.source,
    this.multimedia,
    this.headline,
    this.keywords,
    this.pubDate,
    this.documentType,
    this.newsDesk,
    this.sectionName,
    this.subsectionName,
    this.byline,
    this.sId,
    this.wordCount,
    this.uri,
  });
}

@jsonSerializable
class Multimedia {
  int? rank;
  String? subtype;
  Null? caption;
  Null? credit;
  String? type;
  String? url;
  int? height;
  int? width;
  Legacy? legacy;

  @JsonProperty(name: "subType")
  String? subType;

  @JsonProperty(name: "crop_name")
  String? cropName;

  Multimedia({
    this.rank,
    this.subtype,
    this.caption,
    this.credit,
    this.type,
    this.url,
    this.height,
    this.width,
    this.legacy,
    this.subType,
    this.cropName,
  });
}

@jsonSerializable
class Legacy {
  String? xlarge;

  @JsonProperty(name: "xlargewidth")
  int? xlargewidth;

  @JsonProperty(name: "xlargeheight")
  int? xlargeheight;
  String? thumbnail;

  @JsonProperty(name: "thumbnailwidth")
  int? thumbnailwidth;

  @JsonProperty(name: "thumbnailheight")
  int? thumbnailheight;

  @JsonProperty(name: "widewidth")
  int? widewidth;

  @JsonProperty(name: "wideheight")
  int? wideheight;
  String? wide;

  Legacy({
    this.xlarge,
    this.xlargewidth,
    this.xlargeheight,
    this.thumbnail,
    this.thumbnailwidth,
    this.thumbnailheight,
    this.widewidth,
    this.wideheight,
    this.wide,
  });
}

@jsonSerializable
class Headline {
  String? main;
  Null? kicker;

  @JsonProperty(name: "content_kicker")
  Null? contentKicker;

  @JsonProperty(name: "print_headline")
  Null? printHeadline;
  Null? name;
  Null? seo;
  Null? sub;

  Headline({
    this.main,
    this.kicker,
    this.contentKicker,
    this.printHeadline,
    this.name,
    this.seo,
    this.sub,
  });
}

@jsonSerializable
class Keywords {
  String? name;
  String? value;
  int? rank;
  String? major;

  Keywords({this.name, this.value, this.rank, this.major});
}

@jsonSerializable
class Byline {
  Null? original;
  List<Null>? person;
  Null? organization;

  Byline({this.original, this.person, this.organization});
}

@jsonSerializable
class Meta {
  int? hits;
  int? offset;
  int? time;

  Meta({this.hits, this.offset, this.time});
}
