import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class ArchiveBO {
  String? copyright;
  @JsonProperty(name: 'response')
  Responses? responses;

  ArchiveBO({this.copyright, this.responses});
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

  @JsonProperty(name: 'web_url')
  String? webUrl;

  String? snippet;

  @JsonProperty(name: 'lead_paragraph')
  String? leadParagraph;

  String? source;
  @JsonProperty(name: 'Multimedia')
  List<Multimedias>? multimedias;
  Headline? headline;
  List<Keywords>? keywords;

  @JsonProperty(name: 'pub_date')
  String? pubDate;

  @JsonProperty(name: 'document_type')
  String? documentType;

  @JsonProperty(name: 'news_desk')
  String? newsDesk;

  @JsonProperty(name: 'section_name')
  String? sectionName;

  Byline? byline;

  @JsonProperty(name: 'type_of_material')
  String? typeOfMaterial;

  @JsonProperty(name: '_id')
  String? sId;

  @JsonProperty(name: 'word_count')
  num? wordCount;

  String? uri;

  @JsonProperty(name: 'prnum_section')
  String? prnumSection;

  @JsonProperty(name: 'prnum_page')
  String? prnumPage;

  @JsonProperty(name: 'subsection_name')
  String? subsectionName;

  Docs({
    this.abstract,
    this.webUrl,
    this.snippet,
    this.leadParagraph,
    this.source,
    this.multimedias,
    this.headline,
    this.keywords,
    this.pubDate,
    this.documentType,
    this.newsDesk,
    this.sectionName,
    this.byline,
    this.typeOfMaterial,
    this.sId,
    this.wordCount,
    this.uri,
    this.prnumSection,
    this.prnumPage,
    this.subsectionName,
  });
}

@jsonSerializable
class Multimedias {
  num? rank;
  String? subtype;
  String? caption;
  String? credit;
  String? type;
  String? url;
  num? height;
  num? width;

  @JsonProperty(name: 'subType')
  String? subType;

  @JsonProperty(name: 'crop_name')
  String? cropName;

  Legacy? legacy;

  Multimedias({
    this.rank,
    this.subtype,
    this.caption,
    this.credit,
    this.type,
    this.url,
    this.height,
    this.width,
    this.subType,
    this.cropName,
    this.legacy,
  });
}

@jsonSerializable
class Legacy {
  String? xlarge;

  @JsonProperty(name: 'xlargewidth')
  num? xlargewidth;

  @JsonProperty(name: 'xlargeheight')
  num? xlargeheight;

  String? thumbnail;

  @JsonProperty(name: 'thumbnailwidth')
  num? thumbnailwidth;

  @JsonProperty(name: 'thumbnailheight')
  num? thumbnailheight;

  Legacy({
    this.xlarge,
    this.xlargewidth,
    this.xlargeheight,
    this.thumbnail,
    this.thumbnailwidth,
    this.thumbnailheight,
  });
}

@jsonSerializable
class Headline {
  String? main;
  String? kicker;
  String? contentKicker;
  String? prnumHeadline;
  String? name;
  String? seo;
  String? sub;

  Headline({
    this.main,
    this.kicker,
    this.contentKicker,
    this.prnumHeadline,
    this.name,
    this.seo,
    this.sub,
  });
}

@jsonSerializable
class Keywords {
  String? name;
  String? value;
  num? rank;
  String? major;

  Keywords({
    this.name,
    this.value,
    this.rank,
    this.major,
  });
}

@jsonSerializable
class Byline {
  String? original;
  List<Person>? person;
  String? organization;

  Byline({
    this.original,
    this.person,
    this.organization,
  });
}

@jsonSerializable
class Person {
  String? firstname;
  String? middlename;
  String? lastname;
  String? qualifier;
  String? title;
  String? role;
  String? organization;
  num? rank;

  Person({
    this.firstname,
    this.middlename,
    this.lastname,
    this.qualifier,
    this.title,
    this.role,
    this.organization,
    this.rank,
  });
}

@jsonSerializable
class Meta {
  num? hits;

  Meta({this.hits});
}
