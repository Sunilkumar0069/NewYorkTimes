import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:newyorktimes/BO/AllArticleBO/AllArticleBO.dart';
import 'package:newyorktimes/BO/ArchiveBO/ArchiveBO.dart';
import 'package:newyorktimes/BO/BooksBO/BooksBO.dart';
import 'package:newyorktimes/BO/HotUpdatesBO/HotUpdatesBO.dart';
import 'package:newyorktimes/BO/NewsBO/NewsBO.dart';
import 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart';
import 'package:newyorktimes/Services/API%20Services/NewYorkTimesService/INewYorkTimesService.dart';
import 'package:dio/dio.dart';

class NewYorkTimesService extends INewYorkTimesService {
// dio intialize - baseurl set
// method initialize
// 1. get api
// 2. deserialize
// 3. resturn data

  Dio dio = Dio(BaseOptions(baseUrl: "https://api.nytimes.com/"));
  Dio _dio = Dio(BaseOptions(baseUrl: "https://newsapi.org"));

  String api_key = "hyJM7s9LanNteIYB16T61SOeQj7hyC1Q";

  Future<NewsBO?> getArchiveDetails() async {
    try {
      String apiKey = "8d12bcfa91f6436590e720b5690941ca";
      Response response = await _dio.get(
          "/v2/top-headlines?sources=techcrunch&apiKey=$apiKey",
          options: Options(headers: {"key": apiKey}));
      print("res data of NEWS  --> ${response.data}");
      print("-------_________--------__________---------");
      NewsBO? deSerializeData = JsonMapper.deserialize<NewsBO>(response.data);

      return deSerializeData!;
    } on DioException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<BooksBO?> getBooksDetails() async {
    try {
      Response response = await dio.get(
          "svc/books/v3/lists/current/hardcover-fiction.json?api-key=$api_key",
          options: Options(headers: {"key": api_key}));
      print("res books data --> ${response.data}");
      print("-------_________--------__________---------");
      BooksBO? deserializeData = JsonMapper.deserialize<BooksBO>(response.data);
      print("deserialized data of books =-=-=-=-=-=-=-=-=- ${deserializeData}");
      return deserializeData;
    } on DioException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<TopStoriesBO?> getTopStoriesDetails() async {
    try {
      Response response = await dio.get(
          "/svc/topstories/v2/arts.json?api-key=$api_key",
          options: Options(headers: {"key": api_key}));
      print("res top stories data --> ${response.data}");
      print("-------_________--------__________---------");
      TopStoriesBO? deserializeData =
          JsonMapper.deserialize<TopStoriesBO>(response.data);
      return deserializeData;
    } on DioException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<HotUpdatesBO?> getHotUpdatesDetails() async {
    try {
      Response response = await dio.get(
          "/svc/mostpopular/v2/viewed/1.json?api-key=$api_key",
          options: Options(headers: {"key": api_key}));
      print("res Hot Updates data --> ${response.data}");
      print("-------_________--------__________---------");
      HotUpdatesBO? deserializeData =
          JsonMapper.deserialize<HotUpdatesBO>(response.data);
      return deserializeData;
    } on DioException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<AllArticleBO?> getAllArticleDetails() async {
    try {
      String searchText = "election";
      Response response = await dio.get(
          "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=election&api-key=$api_key",
          options: Options(headers: {
            "key": api_key
            // "search": searchText
          }));
      print("res all article data --> ${response.data}");
      print("-------_________--------__________---------");
      AllArticleBO? deserializeData =
          JsonMapper.deserialize<AllArticleBO>(response.data);
      return deserializeData;
    } on DioException catch (e) {
      return null;
    } catch (e) {
      return null;
    }
  }
}
