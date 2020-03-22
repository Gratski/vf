import 'dart:ui' show Color;

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class VFColor {

  static const MAIN_BG_COLOR = Colors.white;
  static const TEXT_RED = Color.fromARGB(1, 250, 0, 0);

  static const Map<int, Color> _red_color =
    {
    50:Color.fromRGBO(250, 0, 0, .1),
    100:Color.fromRGBO(250, 0, 0, .2),
    200:Color.fromRGBO(250, 0, 0, .3),
    300:Color.fromRGBO(250, 0, 0, .4),
    400:Color.fromRGBO(250, 0, 0, .5),
    500:Color.fromRGBO(250, 0, 0, .6),
    600:Color.fromRGBO(250, 0, 0, .7),
    700:Color.fromRGBO(250, 0, 0, .8),
    800:Color.fromRGBO(250, 0, 0, .9),
    900:Color.fromRGBO(250, 0, 0, 1),
    };

  static const MaterialColor red_color = MaterialColor(0xFFFB0102, _red_color);

  static const Map<int, Color> _green_color =
    {
    50:Color.fromRGBO(30,215,96, .1),
    100:Color.fromRGBO(30,215,96, .2),
    200:Color.fromRGBO(30,215,96, .3),
    300:Color.fromRGBO(30,215,96, .4),
    400:Color.fromRGBO(30,215,96, .5),
    500:Color.fromRGBO(30,215,96, .6),
    600:Color.fromRGBO(30,215,96, .7),
    700:Color.fromRGBO(30,215,96, .8),
    800:Color.fromRGBO(30,215,96, .9),
    900:Color.fromRGBO(30,215,96, 1),
    };

  static const MaterialColor green_color = MaterialColor(0xFF1DB954, _green_color);

  static const Map<int, Color> _white_color =
    {
    50:Color.fromRGBO(255,255, 255, .1),
    100:Color.fromRGBO(255,255, 255, .2),
    200:Color.fromRGBO(255,255, 255, .3),
    300:Color.fromRGBO(255,255, 255, .4),
    400:Color.fromRGBO(255,255, 255, .5),
    500:Color.fromRGBO(255,255, 255, .6),
    600:Color.fromRGBO(255,255, 255, .7),
    700:Color.fromRGBO(255,255, 255, .8),
    800:Color.fromRGBO(255,255, 255, .9),
    900:Color.fromRGBO(255,255, 255, 1),
    };

  static const MaterialColor white_color = MaterialColor(0xFFFFFFFF, _white_color);

  static const Map<int, Color> _owl_blue_color =
    {
    50:Color.fromRGBO(1,22,39, .1),
    100:Color.fromRGBO(1,22,39, .2),
    200:Color.fromRGBO(1,22,39, .3),
    300:Color.fromRGBO(1,22,39, .4),
    400:Color.fromRGBO(1,22,39, .5),
    500:Color.fromRGBO(1,22,39, .6),
    600:Color.fromRGBO(1,22,39, .7),
    700:Color.fromRGBO(1,22,39, .8),
    800:Color.fromRGBO(1,22,39, .9),
    900:Color.fromRGBO(1,22,39, 1),
    };

  static const MaterialColor owl_blue = MaterialColor(0xFF011627, _owl_blue_color);

  static const Map<int, Color> _owl_blue_dark_color =
    {
    50:Color.fromRGBO(1,15,27, .1),
    100:Color.fromRGBO(1,15,27, .2),
    200:Color.fromRGBO(1,15,27, .3),
    300:Color.fromRGBO(1,15,27, .4),
    400:Color.fromRGBO(1,15,27, .5),
    500:Color.fromRGBO(1,15,27, .6),
    600:Color.fromRGBO(1,15,27, .7),
    700:Color.fromRGBO(1,15,27, .8),
    800:Color.fromRGBO(1,15,27, .9),
    900:Color.fromRGBO(1,15,27, 1),
    };

  static const MaterialColor owl_blue_dark = MaterialColor(0xFF010f1b, _owl_blue_dark_color);

  static const Map<int, Color> _owl_blue_details_color =
    {
    50:Color.fromRGBO(95, 126, 151, .1),
    100:Color.fromRGBO(95, 126, 151, .2),
    200:Color.fromRGBO(95, 126, 151, .3),
    300:Color.fromRGBO(95, 126, 151, .4),
    400:Color.fromRGBO(95, 126, 151, .5),
    500:Color.fromRGBO(95, 126, 151, .6),
    600:Color.fromRGBO(95, 126, 151, .7),
    700:Color.fromRGBO(95, 126, 151, .8),
    800:Color.fromRGBO(95, 126, 151, .9),
    900:Color.fromRGBO(95, 126, 151, 1),
    };

  static const MaterialColor owl_blue_details = MaterialColor(0xFF5f7e97, _owl_blue_details_color);
}