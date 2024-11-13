import 'package:newyorktimes/BO/NewsBO/NewsBO.dart';
import 'package:newyorktimes/Pages/AllLatestNewsScreen/AllLatestNewsScreenModel.dart';

class AllLatestNewsScreenVM extends AllLatestNewsScreenModel {
  AllLatestNewsScreenVM() {
    fetchArchiveDetails();
  }

  Future<void> fetchArchiveDetails() async {
    try {
      NewsBO? content = await newYorkTimesService.getArchiveDetails();
      // if (content != null) {
      //   print("=========__________============");
      //   print("type of the content ${content}");
      //   print("=========__________============");
      //   setArchiveDetails(content);
      // }
      // Fetch data logic here
      if (content != null) {
        setArchiveDetails(content);
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
    await fetchArchiveDetails();
    // Replace with the method that fetches data for your VM
  }
}
