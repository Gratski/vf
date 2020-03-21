import 'package:flutter/material.dart';
import 'package:mobileapp/screens/home.screen.dart';
import './styles/colors/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: VFColor.white_color,
        fontFamily: 'OpenSans',
        primarySwatch: VFColor.white_color,
        scaffoldBackgroundColor: const Color.fromARGB(1, 255, 255, 255),
        backgroundColor: VFColor.white_color
      ),
      home: HomeScreen(),
    );
  }
}