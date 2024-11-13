// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HotUpdatesScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HotUpdatesScreenModel on _HotUpdatesScreenModelBase, Store {
  late final _$hotUpdatesDetailsAtom = Atom(
      name: '_HotUpdatesScreenModelBase.hotUpdatesDetails', context: context);

  @override
  HotUpdatesBO get hotUpdatesDetails {
    _$hotUpdatesDetailsAtom.reportRead();
    return super.hotUpdatesDetails;
  }

  @override
  set hotUpdatesDetails(HotUpdatesBO value) {
    _$hotUpdatesDetailsAtom.reportWrite(value, super.hotUpdatesDetails, () {
      super.hotUpdatesDetails = value;
    });
  }

  late final _$isDataAvailableAtom = Atom(
      name: '_HotUpdatesScreenModelBase.isDataAvailable', context: context);

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

  late final _$_HotUpdatesScreenModelBaseActionController =
      ActionController(name: '_HotUpdatesScreenModelBase', context: context);

  @override
  void setHotUpdatesDetails(HotUpdatesBO hotUpdatesDetails) {
    final _$actionInfo = _$_HotUpdatesScreenModelBaseActionController
        .startAction(name: '_HotUpdatesScreenModelBase.setHotUpdatesDetails');
    try {
      return super.setHotUpdatesDetails(hotUpdatesDetails);
    } finally {
      _$_HotUpdatesScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDataAvailability(bool isDataAvailable) {
    final _$actionInfo = _$_HotUpdatesScreenModelBaseActionController
        .startAction(name: '_HotUpdatesScreenModelBase.setDataAvailability');
    try {
      return super.setDataAvailability(isDataAvailable);
    } finally {
      _$_HotUpdatesScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hotUpdatesDetails: ${hotUpdatesDetails},
isDataAvailable: ${isDataAvailable}
    ''';
  }
}
