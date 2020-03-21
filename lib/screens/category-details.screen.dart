import 'package:flutter/material.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/styles/font.styles.dart';

class CatergoryDetailsScreen extends StatelessWidget {

  final int id;
  final String title;
  final String subTitle;
  final String imgUrl;

  CatergoryDetailsScreen(this.id, this.title, this.subTitle, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VFColor.MAIN_BG_COLOR,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            floating: true,
            expandedHeight: 250.0,
            flexibleSpace: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: Image.network(imgUrl,
                      fit: BoxFit.cover,
                  ))
                ],
              ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                  Text(title, style: FontStyles.h1(Colors.black),),
                  Text(subTitle, style: FontStyles.h4(Colors.black),),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: FlatButton(
                            onPressed: () => {

                            },
                            child: Text('Aulas', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                            color: VFColor.red_color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                          ),
                        ), 
                        Spacer(flex: 2,)
                      ],
                    ),
                  )
              ]),
            ),
          )
        ],
      ),
    );
  }
}