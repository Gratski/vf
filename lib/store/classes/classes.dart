import 'package:mobileapp/store/classes/class-period.dart';
import 'package:mobileapp/widgets/lists/items/class.item.dart';
import 'package:mobx/mobx.dart';

part 'classes.g.dart';

class ClassesStore = ClassesBase with _$ClassesStore;

abstract class ClassesBase with Store {

  @observable
  ClassPeriodEnum selectedPeriod;

  @observable
  ObservableList<ClassItem> classes = [
    ClassItem(1)
  ].asObservable();

  ClassesBase(this.selectedPeriod) {
    classes.add(ClassItem(1));
  }

  @action
  void setSelectedPeriodToMorning() {
    this.selectedPeriod = ClassPeriodEnum.MORNING;
  }
  
  @action
  void setSelectedPeriodToAfternoon() {
    this.selectedPeriod = ClassPeriodEnum.AFTERNOON;
  }

  @action
  void setSelectedPeriodToNight() {
    this.selectedPeriod = ClassPeriodEnum.NIGHT;
  }

  @action
  void setClasses(List<String> classes) {
    this.classes = ObservableList();
  }

}