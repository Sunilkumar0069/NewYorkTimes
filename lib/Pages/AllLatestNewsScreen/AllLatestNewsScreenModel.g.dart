// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AllLatestNewsScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AllLatestNewsScreenModel on _AllLatestNewsScreenModelBase, Store {
  late final _$archiveDetailsAtom = Atom(
      name: '_AllLatestNewsScreenModelBase.archiveDetails', context: context);

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

  late final _$isDataAvailableAtom = Atom(
      name: '_AllLatestNewsScreenModelBase.isDataAvailable', context: context);

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

  late final _$_AllLatestNewsScreenModelBaseActionController =
      ActionController(name: '_AllLatestNewsScreenModelBase', context: context);

  @override
  void setArchiveDetails(NewsBO archiveDetails) {
    final _$actionInfo = _$_AllLatestNewsScreenModelBaseActionController
        .startAction(name: '_AllLatestNewsScreenModelBase.setArchiveDetails');
    try {
      return super.setArchiveDetails(archiveDetails);
    } finally {
      _$_AllLatestNewsScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDataAvailability(bool isDataAvailable) {
    final _$actionInfo = _$_AllLatestNewsScreenModelBaseActionController
        .startAction(name: '_AllLatestNewsScreenModelBase.setDataAvailability');
    try {
      return super.setDataAvailability(isDataAvailable);
    } finally {
      _$_AllLatestNewsScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
archiveDetails: ${archiveDetails},
isDataAvailable: ${isDataAvailable}
    ''';
  }
}
