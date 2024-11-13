// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AllTopStoriesScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AllTopStoriesScreenModel on _AllTopStoriesScreenModelBase, Store {
  late final _$isDataAvailableAtom = Atom(
      name: '_AllTopStoriesScreenModelBase.isDataAvailable', context: context);

  @override
  bool get isDataAvailable {
    _$isDataAvailableAtom.reportRead();
    return super.isDataAvailable;
  }

  @override
  set isDataAvailable(bool value) {
    _$isDataAvailableAtom.reportWrite(value, super.isDataAvailable, () {
      super.isDataAvailable = value;
    });
  }

  late final _$topStoriesDetailsAtom = Atom(
      name: '_AllTopStoriesScreenModelBase.topStoriesDetails',
      context: context);

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

  late final _$_AllTopStoriesScreenModelBaseActionController =
      ActionController(name: '_AllTopStoriesScreenModelBase', context: context);

  @override
  void setDataAvailability(bool isDataAvailable) {
    final _$actionInfo = _$_AllTopStoriesScreenModelBaseActionController
        .startAction(name: '_AllTopStoriesScreenModelBase.setDataAvailability');
    try {
      return super.setDataAvailability(isDataAvailable);
    } finally {
      _$_AllTopStoriesScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTopStoriesDetails(TopStoriesBO topStoriesDetails) {
    final _$actionInfo =
        _$_AllTopStoriesScreenModelBaseActionController.startAction(
            name: '_AllTopStoriesScreenModelBase.setTopStoriesDetails');
    try {
      return super.setTopStoriesDetails(topStoriesDetails);
    } finally {
      _$_AllTopStoriesScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDataAvailable: ${isDataAvailable},
topStoriesDetails: ${topStoriesDetails}
    ''';
  }
}
