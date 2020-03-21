import 'package:flutter/material.dart';
import 'package:mobileapp/screens/category-details.screen.dart';
import 'package:mobileapp/screens/classes.screen.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/widgets/lists/items/category.item.dart';

class CategoryScreen extends StatelessWidget {

  final int categoryId;
  final String categoryTitle;
  final String categoryDescription;
  final String categoryImgUrl;

  CategoryScreen(this.categoryId, this.categoryTitle, this.categoryDescription, this.categoryImgUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VFColor.MAIN_BG_COLOR,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            centerTitle: false,
            title: RichText(
                text: TextSpan(
                  text: '${categoryTitle} \n',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(text: categoryDescription, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                  ],
                ),
              ),
            floating: true,
            expandedHeight: 40.0,
            /*
            flexibleSpace: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: Image.network(categoryImgUrl,
                      fit: BoxFit.cover,
                  ))
                ],
              ),
              */
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                CategoryListItem('YOGA', 'https://cdn-cv.r4you.co/wp-content/uploads/2018/01/iStock-519860624.jpg', () => {
                  Navigator.push(
                    context,
                    //MaterialPageRoute(builder: (context) => CategoryScreen(1, 'YOGA', 'category description', "https://cdn-cv.r4you.co/wp-content/uploads/2018/01/iStock-519860624.jpg")))
                    MaterialPageRoute(builder: (context) => ClassesScreen('YOGA')))
                    //MaterialPageRoute(builder: (context) => CatergoryDetailsScreen(1, 'YOGA', 'Liberte a sua Mente', "https://cdn-cv.r4you.co/wp-content/uploads/2018/01/iStock-519860624.jpg")))
                }),
              ]),
            )
          )
        ],
      ),
    );
  }
}