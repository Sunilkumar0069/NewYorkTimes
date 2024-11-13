// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newyorktimes/App.dart';
import 'package:newyorktimes/Services/API%20Services/NewYorkTimesService/INewYorkTimesService.dart';
import 'package:newyorktimes/Services/API%20Services/NewYorkTimesService/NewYorkTimesService.dart';
import 'package:newyorktimes/firebase_options.dart';
import 'package:newyorktimes/main.reflectable.dart';
import 'package:reflectable/reflectable.dart';
import 'package:get_it/get_it.dart';
import 'BO/ArchiveBO/ArchiveBO.mapper.g.dart' as archiveBO;
import 'BO/BooksBO/BooksBO.mapper.g.dart' as booksBO;
import 'BO/TopStoriesBO/TopStoriesBO.mapper.g.dart' as topStoriesBO;
import 'BO/HotUpdatesBO/HotUpdatesBO.mapper.g.dart' as hotUpdatesBO;
import 'BO/NewsBO/NewsBO.mapper.g.dart' as newsBO;
import 'BO/AllArticleBO/AllArticleBO.mapper.g.dart' as allArticleBO;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  GetIt.I.registerSingleton<INewYorkTimesService>(NewYorkTimesService());
  initializeReflectable();
  archiveBO.initializeJsonMapper();
  booksBO.initializeJsonMapper();
  topStoriesBO.initializeJsonMapper();
  allArticleBO.initializeJsonMapper();
  hotUpdatesBO.initializeJsonMapper();
  newsBO.initializeJsonMapper();

  runApp(const MyApp());
}
