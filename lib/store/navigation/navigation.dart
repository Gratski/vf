import 'package:mobx/mobx.dart';

part 'navigation.g.dart';

class NavigationStore = NavigationBase with _$NavigationStore;

abstract class NavigationBase with Store {

  @observable
  int bottomNavIndex;

  NavigationBase(this.bottomNavIndex);

  @action
  void setBottomNavigationIndex(int index) {
    this.bottomNavIndex = index;
  }
  

}