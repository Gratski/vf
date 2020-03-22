import 'package:mobileapp/store/classes/class-period.dart';
import 'package:mobx/mobx.dart';

part 'classes.g.dart';

class ClassesStore = ClassesBase with _$ClassesStore;

abstract class ClassesBase with Store {

  @observable
  ClassPeriodEnum selectedPeriod;

  ClassesBase(this.selectedPeriod);

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

}