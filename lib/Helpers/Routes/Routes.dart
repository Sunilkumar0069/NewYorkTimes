// ignore_for_file: prefer_const_constructors

import 'package:go_router/go_router.dart';
import 'package:newyorktimes/BO/NewsBO/NewsBO.dart';
import 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart';
import 'package:newyorktimes/Pages/AllLatestNewsScreen/AllLatestNewsScreen.dart';
import 'package:newyorktimes/Pages/AllTopStoriesScreen/AllTopStoriesScreen.dart';
import 'package:newyorktimes/Pages/HomeScreen/HomeScreen.dart';
import 'package:newyorktimes/Pages/HotUpdatesScreen/HotUpdatesScreen.dart';
import 'package:newyorktimes/Pages/LoginScreen/LoginScreen.dart';
import 'package:newyorktimes/Pages/NewsDetailsScreen/NewDetailsScreen.dart';
import 'package:newyorktimes/Pages/ProfileScreen/ProfileScreen.dart';
import 'package:newyorktimes/Pages/SplashScreen/SplashScreen.dart';
import 'package:newyorktimes/Pages/StoriesDetailsScreen/StoriesDetailsScreen.dart';
import 'package:newyorktimes/Pages/TopBookScreen/TopBookScreen.dart';

class Pages {
  static String splashScreen = "/";
  static String loginScreen = "/loginScreen";
  static String homeScreen = "/homeScreen";
  static String profileScreen = "/profileScreen";
  static String allLatestNewsScreen = "/allLatestNewsScreen";
  static String topBookScreen = "/topBookScreen";
  static String allTopStoriesScreen = "/allTopStoriesScreen";
  static String hotUpdatesScreen = "/hotUpdatesScreen";
  static String newsDetailsScreen = "/newsDetailsScreen";
  static String storiesDetailsScreen = "/storiesDetailsScreen";
}

class AppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: Pages.splashScreen,
      builder: (context, state) {
        return SplashScreen();
      },
    ),
    GoRoute(
      path: Pages.loginScreen,
      builder: (context, state) {
        return LoginScreen();
      },
    ),
    GoRoute(
      path: Pages.homeScreen,
      builder: (context, state) {
        return HomeScreen();
      },
    ),
    GoRoute(
      path: Pages.profileScreen,
      builder: (context, state) {
        return ProfileScreen();
      },
    ),
    GoRoute(
      path: Pages.allLatestNewsScreen,
      builder: (context, state) {
        return AllLatestNewsScreen();
      },
    ),
    GoRoute(
      path: Pages.topBookScreen,
      builder: (context, state) {
        return TopBookScreen();
      },
    ),
    GoRoute(
      path: Pages.hotUpdatesScreen,
      builder: (context, state) {
        return HotUpdatesScreen();
      },
    ),
    GoRoute(
      path: Pages.newsDetailsScreen,
      builder: (context, state) {
        final args = state.extra as Map<String, dynamic>;
        final archiveDetails = args["archiveDetails"] as List<Articles>;
        final index = args["index"] as int;
        return NewsDetailsScreen(
          archiveDetails: archiveDetails,
          index: index,
        );
      },
    ),
    GoRoute(
      path: Pages.allTopStoriesScreen,
      builder: (context, state) {
        return AllTopStoriesScreen();
      },
    ),
    GoRoute(
      path: Pages.storiesDetailsScreen,
      builder: (context, state) {
        final args = state.extra as Map<String, dynamic>;
        final archiveDetails = args["archiveDetails"] as List<Results>;

        final index = args["index"] as int;
        return StoriesDetailsScreen(
          archiveDetails: archiveDetails,
          index: index,
        );
      },
    ),
  ]);
}
