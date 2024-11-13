import 'package:newyorktimes/BO/AllArticleBO/AllArticleBO.dart';
import 'package:newyorktimes/BO/ArchiveBO/ArchiveBO.dart';
import 'package:newyorktimes/BO/BooksBO/BooksBO.dart';
import 'package:newyorktimes/BO/HotUpdatesBO/HotUpdatesBO.dart';
import 'package:newyorktimes/BO/NewsBO/NewsBO.dart';
import 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart';
import 'package:newyorktimes/Pages/HomeScreen/HomeScreenModel.dart';

class HomeScreenVM extends HomeScreenModel {
  HomeScreenVM() {
    fetchArchiveDetails();
    // fetchBooksDetails();
    // fetchTopStoriesDetails();
  }

  Future<void> fetchArchiveDetails() async {
    try {
      NewsBO? content = await newYorkTimesService.getArchiveDetails();
      fetchTopStoriesDetails();
      if (content != null) {
        setArchiveDetails(content);
      }

      // Fetch data logic here
      // if (content != null) {
      //   print("=========__________============");
      //   print("type of the content ${content}");
      //   print("=========__________============");
      //   setArchiveDetails(content);

      //   setDataAvailability(true);
      // } else {
      //   setDataAvailability(false);
      // }
    } catch (e) {
      print(e);
    }
  }

  // Future<void> fetchBooksDetails() async {
  //   try {
  //     BooksBO? content = await newYorkTimesService.getBooksDetails();

  //     if (content != null) {
  //       print("=========__________============");
  //       print("type of the content ${content}");
  //       print("=========__________============");
  //       setBooksDetails(content);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

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

  void updateDataAvailability(bool isDataAvailable) {
    print("is data available -----_______-------${isDataAvailable}");
    setDataAvailability(isDataAvailable);
  }

  // Define the refresh function to reload data
  Future<void> pullToRefresh() async {
    await fetchArchiveDetails();
    await fetchTopStoriesDetails(); // Replace with the method that fetches data for your VM
  }
}
