import 'package:newyorktimes/BO/AllArticleBO/AllArticleBO.dart';
import 'package:newyorktimes/BO/ArchiveBO/ArchiveBO.dart';
import 'package:newyorktimes/BO/BooksBO/BooksBO.dart';
import 'package:newyorktimes/BO/HotUpdatesBO/HotUpdatesBO.dart';
import 'package:newyorktimes/BO/NewsBO/NewsBO.dart';
import 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart';

abstract class INewYorkTimesService {
  Future<NewsBO?> getArchiveDetails();
  Future<BooksBO?> getBooksDetails();
  Future<TopStoriesBO?> getTopStoriesDetails();
  Future<HotUpdatesBO?> getHotUpdatesDetails();
  Future<AllArticleBO?> getAllArticleDetails();
}
