import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobileapp/globals/global_vars.dart';
import 'package:mobileapp/screens/category.screen.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/styles/font.styles.dart';
import 'package:mobileapp/widgets/lists/avatar.list.dart';
import 'package:mobileapp/widgets/lists/items/category.item.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VFColor.MAIN_BG_COLOR, 
      body: Padding(
        padding: EdgeInsets.only(top:80, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Text('Lista de Aulas', style: FontStyles.h1(Colors.black),),
            ),
            Flexible(
              flex: 1,
              child: Text('escolha a aula em que quer participar', style: FontStyles.h4(Colors.black),),
            ),
            Flexible(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: AvatarList()
              )
            ),
            Flexible(
              flex: 10,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Hero(
                    tag: 'category',
                    child: CategoryListItem('https://image.freepik.com/fotos-gratis/grupo-de-criancas-estao-envolvidas-em-yoga-com-um-treinador-no-oceano_110955-452.jpg', () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryScreen(1, 'Mind', 'category description', "https://image.freepik.com/fotos-gratis/grupo-de-criancas-estao-envolvidas-em-yoga-com-um-treinador-no-oceano_110955-452.jpg")))
                    })
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('perfil', style: TextStyle(color: Color.fromARGB(1, 250, 0, 0))),
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