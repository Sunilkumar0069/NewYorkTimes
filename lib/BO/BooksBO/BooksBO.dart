import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class BooksBO {
  String? status;
  String? copyright;

  @JsonProperty(name: "int_results")
  int? intResults;

  @JsonProperty(name: "last_modified")
  String? lastModified;
  Results? results;

  BooksBO(
      {this.status,
      this.copyright,
      this.intResults,
      this.lastModified,
      this.results});
}

@jsonSerializable
class Results {
  @JsonProperty(name: "list_name")
  String? listName;

  @JsonProperty(name: "list_name_encoded")
  String? listNameEncoded;

  @JsonProperty(name: "bestsellers_date")
  String? bestsellersDate;

  @JsonProperty(name: "published_date")
  String? publishedDate;

  @JsonProperty(name: "published_date_description")
  String? publishedDateDescription;

  @JsonProperty(name: "next_published_date")
  String? nextPublishedDate;

  @JsonProperty(name: "previous_published_date")
  String? previousPublishedDate;

  @JsonProperty(name: "display_name")
  String? displayName;

  @JsonProperty(name: "normal_list_ends_at")
  int? normalListEndsAt;
  String? updated;
  List<Books>? books;
  List<Null>? corrections;

  Results({
    this.listName,
    this.listNameEncoded,
    this.bestsellersDate,
    this.publishedDate,
    this.publishedDateDescription,
    this.nextPublishedDate,
    this.previousPublishedDate,
    this.displayName,
    this.normalListEndsAt,
    this.updated,
    this.books,
    this.corrections,
  });
}

@jsonSerializable
class Books {
  int? rank;

  @JsonProperty(name: "rank_last_week")
  int? rankLastWeek;

  @JsonProperty(name: "weeks_on_list")
  int? weeksOnList;
  int? asterisk;
  int? dagger;

  @JsonProperty(name: "primary_isbn10")
  String? primaryIsbnone;

  @JsonProperty(name: "primary_isbn13")
  String? primaryIsbntwo;
  String? publisher;
  String? description;
  String? price;
  String? title;
  String? author;
  String? contributor;

  @JsonProperty(name: "contributor_note")
  String? contributorNote;

  @JsonProperty(name: "book_image")
  String? bookImage;

  @JsonProperty(name: "book_image_width")
  int? bookImageWidth;

  @JsonProperty(name: "book_image_height")
  int? bookImageHeight;

  @JsonProperty(name: "amazon_product_url")
  String? amazonProductUrl;

  @JsonProperty(name: "age_group")
  String? ageGroup;

  @JsonProperty(name: "book_review_link")
  String? bookReviewLink;

  @JsonProperty(name: "first_chapter_link")
  String? firstChapterLink;

  @JsonProperty(name: "sunday_review_link")
  String? sundayReviewLink;

  @JsonProperty(name: "article_chapter_link")
  String? articleChapterLink;
  List<Isbns>? isbns;

  @JsonProperty(name: "buy_links")
  List<BuyLinks>? buyLinks;

  @JsonProperty(name: "book_uri")
  String? bookUri;

  Books({
    this.rank,
    this.rankLastWeek,
    this.weeksOnList,
    this.asterisk,
    this.dagger,
    this.primaryIsbnone,
    this.primaryIsbntwo,
    this.publisher,
    this.description,
    this.price,
    this.title,
    this.author,
    this.contributor,
    this.contributorNote,
    this.bookImage,
    this.bookImageWidth,
    this.bookImageHeight,
    this.amazonProductUrl,
    this.ageGroup,
    this.bookReviewLink,
    this.firstChapterLink,
    this.sundayReviewLink,
    this.articleChapterLink,
    this.isbns,
    this.buyLinks,
    this.bookUri,
  });
}

@jsonSerializable
class Isbns {
  @JsonProperty(name: "isbn10")
  String? isbnone;

  @JsonProperty(name: "isbn13")
  String? isbntwo;

  Isbns({this.isbnone, this.isbntwo});
}

@jsonSerializable
class BuyLinks {
  String? name;
  String? url;

  BuyLinks({this.name, this.url});
}
