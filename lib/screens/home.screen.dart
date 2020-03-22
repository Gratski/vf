import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobileapp/globals/global_vars.dart';
import 'package:mobileapp/screens/category.screen.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/widgets/dialogs/join-class.dialog.dart';
import 'package:mobileapp/widgets/lists/avatar.list.dart';
import 'package:mobileapp/widgets/lists/items/category.item.dart';

class HomeScreen extends StatelessWidget {

  final Key refreshKey = GlobalKey<RefreshIndicatorState>();

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VFColor.MAIN_BG_COLOR, 
      body: RefreshIndicator(
        key: refreshKey,
        color: VFColor.red_color,
        onRefresh: _onRefresh,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,
              title: Hero(
                tag: 'category',
                child: RichText(
                  text: TextSpan(
                    text: 'VirtualFit \n',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(text: 'a tua aplicação fit!', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                    ],
                  ),
                ),
              ),
              floating: true,
              expandedHeight: 40.0,
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 10, right: 10),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text('a decorrer'),
                  )
                ])
              )
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 100.0,
                child: AvatarList(new DialogPresenter().showJoinClassDialog)
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 10, right: 10),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  CategoryListItem('MIND', 'https://cdn.shopify.com/s/files/1/1184/8924/files/Morgan_05_3000x2000_1800x.jpg', () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryScreen(1, 'Mind', 'category description', "https://cdn.shopify.com/s/files/1/1184/8924/files/Morgan_05_3000x2000_1800x.jpg")))
                    }),
                  CategoryListItem('HIIT', 'https://cdn2.coachmag.co.uk/sites/coachmag/files/2017/03/hiit-workouts-burpee.jpg', () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CategoryScreen(1, 'HIIT', 'category description', "https://cdn2.coachmag.co.uk/sites/coachmag/files/2017/03/hiit-workouts-burpee.jpg")))
                    }),
                ]),
              ),
            ),
            
          ]
        ),
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              title: Text('perfil'),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cubes),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart),
              title: Text('Aulas'),
            ),
          ],
          currentIndex: navStore.bottomNavIndex,
          selectedItemColor: VFColor.red_color,
          elevation: 1.0,
          onTap: _onItemTapped,
        )
      )
    );
  }

  void _onItemTapped(int index) {
    navStore.setBottomNavigationIndex(index);
  }

}