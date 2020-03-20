// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavigationStore on NavigationBase, Store {
  final _$bottomNavIndexAtom = Atom(name: 'NavigationBase.bottomNavIndex');

  @override
  int get bottomNavIndex {
    _$bottomNavIndexAtom.context.enforceReadPolicy(_$bottomNavIndexAtom);
    _$bottomNavIndexAtom.reportObserved();
    return super.bottomNavIndex;
  }

  @override
  set bottomNavIndex(int value) {
    _$bottomNavIndexAtom.context.conditionallyRunInAction(() {
      super.bottomNavIndex = value;
      _$bottomNavIndexAtom.reportChanged();
    }, _$bottomNavIndexAtom, name: '${_$bottomNavIndexAtom.name}_set');
  }

  final _$NavigationBaseActionController =
      ActionController(name: 'NavigationBase');

  @override
  void setBottomNavigationIndex(int index) {
    final _$actionInfo = _$NavigationBaseActionController.startAction();
    try {
      return super.setBottomNavigationIndex(index);
    } finally {
      _$NavigationBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'bottomNavIndex: ${bottomNavIndex.toString()}';
    return '{$string}';
  }
}
