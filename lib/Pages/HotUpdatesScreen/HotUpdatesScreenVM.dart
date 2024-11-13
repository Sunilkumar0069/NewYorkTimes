import 'package:newyorktimes/BO/HotUpdatesBO/HotUpdatesBO.dart';
import 'package:newyorktimes/Pages/HotUpdatesScreen/HotUpdatesScreenModel.dart';

class HotUpdatesScreenVM extends HotUpdatesScreenModel {
  HotUpdatesScreenVM() {
    fetchHotUpdatesDetails();
  }

  Future<void> fetchHotUpdatesDetails() async {
    try {
      HotUpdatesBO? content = await newYorkTimesService.getHotUpdatesDetails();

      if (content != null) {
        setHotUpdatesDetails(content);
        setDataAvailability(true);
      } else {
        setDataAvailability(false);
      }
    } catch (e) {
      print(e);
    }
  }

  void updateDataAvailability(bool isDataAvailable) {
    setDataAvailability(isDataAvailable);
  }

  Future<void> pullToRefresh() async {
    await fetchHotUpdatesDetails();
    // Replace with the method that fetches data for your VM
  }
}
