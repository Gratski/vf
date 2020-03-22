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

  final _$classesAtom = Atom(name: 'ClassesBase.classes');

  @override
  ObservableList<ClassItem> get classes {
    _$classesAtom.context.enforceReadPolicy(_$classesAtom);
    _$classesAtom.reportObserved();
    return super.classes;
  }

  @override
  set classes(ObservableList<ClassItem> value) {
    _$classesAtom.context.conditionallyRunInAction(() {
      super.classes = value;
      _$classesAtom.reportChanged();
    }, _$classesAtom, name: '${_$classesAtom.name}_set');
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
  void setClasses(List<String> classes) {
    final _$actionInfo = _$ClassesBaseActionController.startAction();
    try {
      return super.setClasses(classes);
    } finally {
      _$ClassesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'selectedPeriod: ${selectedPeriod.toString()},classes: ${classes.toString()}';
    return '{$string}';
  }
}
