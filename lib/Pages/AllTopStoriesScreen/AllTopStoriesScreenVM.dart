import 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart';
import 'package:newyorktimes/Pages/AllTopStoriesScreen/AllTopStoriesScreenModel.dart';

class AllTopStoriesScreenVM extends AllTopStoriesScreenModel {
  AllTopStoriesScreenVM() {
    fetchTopStoriesDetails();
  }
  void updateDataAvailability(bool isDataAvailable) {
    print("is data available -----_______-------${isDataAvailable}");
    setDataAvailability(isDataAvailable);
  }

  Future<void> fetchTopStoriesDetails() async {
    try {
      TopStoriesBO? content = await newYorkTimesService.getTopStoriesDetails();
      // if (content != null) {
      //   print("=========__________============");
      //   print("type of the content ${content}");
      //   print("=========__________============");
      //   setTopStoriesDetails(content);
      // }
      if (content != null) {
        print("=========__________============");
        print("type of the content ${content}");
        print("=========__________============");
        setTopStoriesDetails(content);
        setDataAvailability(true);
      } else {
        setDataAvailability(false);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> pullToRefresh() async {
    await fetchTopStoriesDetails(); // Replace with the method that fetches data for your VM
  }
}
