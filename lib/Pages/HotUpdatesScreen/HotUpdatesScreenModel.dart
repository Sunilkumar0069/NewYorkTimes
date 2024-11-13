import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:newyorktimes/BO/HotUpdatesBO/HotUpdatesBO.dart';
import 'package:newyorktimes/Services/API%20Services/NewYorkTimesService/INewYorkTimesService.dart';
part 'HotUpdatesScreenModel.g.dart';

class HotUpdatesScreenModel = _HotUpdatesScreenModelBase with _$HotUpdatesScreenModel;

abstract class _HotUpdatesScreenModelBase with Store {
    INewYorkTimesService newYorkTimesService =
      GetIt.I.get<INewYorkTimesService>();

       @observable
  HotUpdatesBO hotUpdatesDetails = HotUpdatesBO();
  @action
  void setHotUpdatesDetails(HotUpdatesBO hotUpdatesDetails) {
    this.hotUpdatesDetails = hotUpdatesDetails;
  }

    @observable
  bool isDataAvailable = false;
  @action
  void setDataAvailability(bool isDataAvailable) {
    this.isDataAvailable = isDataAvailable;
  }

}