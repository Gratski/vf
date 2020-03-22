// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClassesStore on ClassesBase, Store {
  final _$selectedPeriodAtom = Atom(name: 'ClassesBase.selectedPeriod');

  @override
  ClassPeriodEnum get selectedPeriod {
    _$selectedPeriodAtom.context.enforceReadPolicy(_$selectedPeriodAtom);
    _$selectedPeriodAtom.reportObserved();
    return super.selectedPeriod;
  }

  @override
  set selectedPeriod(ClassPeriodEnum value) {
    _$selectedPeriodAtom.context.conditionallyRunInAction(() {
      super.selectedPeriod = value;
      _$selectedPeriodAtom.reportChanged();
    }, _$selectedPeriodAtom, name: '${_$selectedPeriodAtom.name}_set');
  }

  final _$ClassesBaseActionController = ActionController(name: 'ClassesBase');

  @override
  void setSelectedPeriodToMorning() {
    final _$actionInfo = _$ClassesBaseActionController.startAction();
    try {
      return super.setSelectedPeriodToMorning();
    } finally {
      _$ClassesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedPeriodToAfternoon() {
    final _$actionInfo = _$ClassesBaseActionController.startAction();
    try {
      return super.setSelectedPeriodToAfternoon();
    } finally {
      _$ClassesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedPeriodToNight() {
    final _$actionInfo = _$ClassesBaseActionController.startAction();
    try {
      return super.setSelectedPeriodToNight();
    } finally {
      _$ClassesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'selectedPeriod: ${selectedPeriod.toString()}';
    return '{$string}';
  }
}
