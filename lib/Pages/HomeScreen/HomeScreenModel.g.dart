// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModelBase, Store {
  late final _$archiveDetailsAtom =
      Atom(name: '_HomeScreenModelBase.archiveDetails', context: context);

  @override
  NewsBO get archiveDetails {
    _$archiveDetailsAtom.reportRead();
    return super.archiveDetails;
  }

  @override
  set archiveDetails(NewsBO value) {
    _$archiveDetailsAtom.reportWrite(value, super.archiveDetails, () {
      super.archiveDetails = value;
    });
  }

  late final _$topStoriesDetailsAtom =
      Atom(name: '_HomeScreenModelBase.topStoriesDetails', context: context);

  @override
  TopStoriesBO get topStoriesDetails {
    _$topStoriesDetailsAtom.reportRead();
    return super.topStoriesDetails;
  }

  @override
  set topStoriesDetails(TopStoriesBO value) {
    _$topStoriesDetailsAtom.reportWrite(value, super.topStoriesDetails, () {
      super.topStoriesDetails = value;
    });
  }

  late final _$isNotDataAvailableAtom =
      Atom(name: '_HomeScreenModelBase.isNotDataAvailable', context: context);

  @override
  bool get isNotDataAvailable {
    _$isNotDataAvailableAtom.reportRead();
    return super.isNotDataAvailable;
  }

  @override
  set isNotDataAvailable(bool value) {
    _$isNotDataAvailableAtom.reportWrite(value, super.isNotDataAvailable, () {
      super.isNotDataAvailable = value;
    });
  }

  late final _$_HomeScreenModelBaseActionController =
      ActionController(name: '_HomeScreenModelBase', context: context);

  @override
  void setArchiveDetails(NewsBO archiveDetails) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setArchiveDetails');
    try {
      return super.setArchiveDetails(archiveDetails);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTopStoriesDetails(TopStoriesBO topStoriesDetails) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setTopStoriesDetails');
    try {
      return super.setTopStoriesDetails(topStoriesDetails);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDataAvailability(bool isNotDataAvailable) {
    final _$actionInfo = _$_HomeScreenModelBaseActionController.startAction(
        name: '_HomeScreenModelBase.setDataAvailability');
    try {
      return super.setDataAvailability(isNotDataAvailable);
    } finally {
      _$_HomeScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
archiveDetails: ${archiveDetails},
topStoriesDetails: ${topStoriesDetails},
isNotDataAvailable: ${isNotDataAvailable}
    ''';
  }
}
