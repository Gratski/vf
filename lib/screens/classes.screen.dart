import 'package:flutter/material.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/widgets/lists/avatar.list.dart';

class ClassesScreen extends StatelessWidget {

  final String activity;

  ClassesScreen(this.activity);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VFColor.MAIN_BG_COLOR,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            centerTitle: false,
            title: Hero(
              tag: 'category',
              child: RichText(
                text: TextSpan(
                  text: '${activity} \n',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(text: 'escolhe já a aula que queres fazer!', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                  ],
                ),
              ),
            ),
            floating: true,
            expandedHeight: 40.0,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100.0,
              child: AvatarList()
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: FlatButton(
                            onPressed: () => {

                            },
                            child: Text('MANHÃ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                            color: VFColor.red_color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 4,
                        child: FlatButton(
                            onPressed: () => {

                            },
                            child: Text('TARDE', style: TextStyle(fontWeight: FontWeight.bold, color: VFColor.red_color)),
                            color: VFColor.white_color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: VFColor.red_color)
                            ),
                          ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 4,
                        child: FlatButton(
                            onPressed: () => {

                            },
                            child: Text('NOITE', style: TextStyle(fontWeight: FontWeight.bold, color: VFColor.red_color)),
                            color: VFColor.white_color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: VFColor.red_color)
                            ),
                          ),
                      ),
                    ],
                  ),
                  
                ]
              )
            ),
          )
        ],
      ),
    );
  }
}