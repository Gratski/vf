import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobileapp/globals/global_vars.dart';
import 'package:mobileapp/styles/font.styles.dart';
import './styles/colors/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primarySwatch: VFColor.owl_blue_dark,
        scaffoldBackgroundColor: const Color.fromARGB(1, 255, 255, 255),
        backgroundColor: VFColor.MAIN_BG_COLOR
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VFColor.MAIN_BG_COLOR, 
      body: Padding(
        padding: EdgeInsets.only(top:80, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Text(
              'Em que aula quer participar', style: FontStyles.h1(Colors.black),
            )
          ],
        ),
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('perfil'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Aulas'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('Treinadores'),
        ),
      ],
      currentIndex: navStore.bottomNavIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    ),
      ),
    );
  }

  void _onItemTapped(int index) {
    navStore.setBottomNavigationIndex(index);
  }

}