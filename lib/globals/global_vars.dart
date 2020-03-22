library mobileapp.globals;

import 'package:flutter/material.dart';
import 'package:mobileapp/store/classes/class-period.dart';
import 'package:mobileapp/store/classes/classes.dart';
import 'package:mobileapp/store/navigation/navigation.dart';
import 'package:mobileapp/widgets/lists/items/class.item.dart';

//////////////////////////////////////////////////////////////////////////////////////
/// STORES
//////////////////////////////////////////////////////////////////////////////////////
final navStore = NavigationStore(2);

final classesStore = ClassesStore(ClassPeriodEnum.MORNING);

//////////////////////////////////////////////////////////////////////////////////////
/// CONSTANTS
//////////////////////////////////////////////////////////////////////////////////////
const double AVATAR_RADIUS = 70.0;