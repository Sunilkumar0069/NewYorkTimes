import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart';
import 'package:newyorktimes/Services/API%20Services/NewYorkTimesService/INewYorkTimesService.dart';
part 'AllTopStoriesScreenModel.g.dart';

class AllTopStoriesScreenModel = _AllTopStoriesScreenModelBase with _$AllTopStoriesScreenModel;

abstract class _AllTopStoriesScreenModelBase with Store {
    INewYorkTimesService newYorkTimesService =
      GetIt.I.get<INewYorkTimesService>();

    @observable
  bool isDataAvailable = false;
  @action
  void setDataAvailability(bool isDataAvailable) {
    this.isDataAvailable = isDataAvailable;
  }

   @observable
  TopStoriesBO topStoriesDetails = TopStoriesBO();
  @action
  void setTopStoriesDetails(TopStoriesBO topStoriesDetails) {
    this.topStoriesDetails = topStoriesDetails;
  }

}