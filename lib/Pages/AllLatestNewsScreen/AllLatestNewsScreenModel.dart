import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:newyorktimes/BO/BooksBO/BooksBO.dart';
import 'package:newyorktimes/BO/NewsBO/NewsBO.dart';
import 'package:newyorktimes/Services/API%20Services/NewYorkTimesService/INewYorkTimesService.dart';
part 'AllLatestNewsScreenModel.g.dart';

class AllLatestNewsScreenModel = _AllLatestNewsScreenModelBase with _$AllLatestNewsScreenModel;

abstract class _AllLatestNewsScreenModelBase with Store {
  
  INewYorkTimesService newYorkTimesService =
      GetIt.I.get<INewYorkTimesService>();

  @observable
  NewsBO archiveDetails = NewsBO();
  @action
  void setArchiveDetails(NewsBO archiveDetails) {
    this.archiveDetails = archiveDetails;
  }
   @observable
  bool isDataAvailable = false;
  @action
  void setDataAvailability(bool isDataAvailable) {
    this.isDataAvailable = isDataAvailable;
  }

}