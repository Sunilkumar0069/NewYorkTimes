import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:newyorktimes/BO/AllArticleBO/AllArticleBO.dart';
import 'package:newyorktimes/BO/ArchiveBO/ArchiveBO.dart';
import 'package:newyorktimes/BO/BooksBO/BooksBO.dart';
import 'package:newyorktimes/BO/HotUpdatesBO/HotUpdatesBO.dart';
import 'package:newyorktimes/BO/NewsBO/NewsBO.dart';
import 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart';
import 'package:newyorktimes/Services/API%20Services/NewYorkTimesService/INewYorkTimesService.dart';
part 'HomeScreenModel.g.dart';

class HomeScreenModel = _HomeScreenModelBase with _$HomeScreenModel;

abstract class _HomeScreenModelBase with Store {
  INewYorkTimesService newYorkTimesService =
      GetIt.I.get<INewYorkTimesService>();

  @observable
  NewsBO archiveDetails = NewsBO();
  @action
  void setArchiveDetails(NewsBO archiveDetails) {
    this.archiveDetails = archiveDetails;
  }

  // @observable
  // BooksBO booksDetails = BooksBO();
  // @action
  // void setBooksDetails(BooksBO booksDetails) {
  //   this.booksDetails = booksDetails;
  // }

  @observable
  TopStoriesBO topStoriesDetails = TopStoriesBO();
  @action
  void setTopStoriesDetails(TopStoriesBO topStoriesDetails) {
    this.topStoriesDetails = topStoriesDetails;
  }

  @observable
  bool isNotDataAvailable = false;
  @action
  void setDataAvailability(bool isNotDataAvailable) {
    this.isNotDataAvailable = isNotDataAvailable;
  }
}
