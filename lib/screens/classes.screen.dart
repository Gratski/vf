import 'package:flutter/material.dart';
import 'package:mobileapp/screens/class.screen.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/widgets/buttons/vfflatbutton.dart';
import 'package:mobileapp/widgets/dialogs/join-class.dialog.dart';
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
              child: AvatarList(new DialogPresenter().showJoinClassDialog)
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
                        child: VFFlatButton((){}, 'MANHÃ', true)
                      ),
                      Spacer(),
                      Expanded(
                        flex: 4,
                        child: VFFlatButton((){}, 'TARDE', false)
                      ),
                      Spacer(),
                      Expanded(
                        flex: 4,
                        child: VFFlatButton((){}, 'TARDE', false)
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => ClassScreen())
                      )
                    },
                    child: Container(
                      height: 150,
                      width: 70,
                      decoration: new BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: new BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              height: 150,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.all(Radius.circular(20)),
                                image: new DecorationImage(
                                  image: new NetworkImage('https://3.imimg.com/data3/JF/GH/MY-12206553/wp-content-uploads-2013-11-groupclass-720x400-500x500.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('YOGA Star', style: TextStyle(fontWeight: FontWeight.bold),),
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Horário'),
                                        Text('6:30 - 7:30')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            children: <Widget>[
                                              Text('5 - 20 '),
                                              Icon(Icons.group, color: VFColor.red_color)
                                            ],
                                          )
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Text('4.5 '),
                                              Icon(Icons.star, color: VFColor.red_color)
                                            ],
                                          )
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            )
                          )
                        ],
                      ),
                    ),
                  )
                ]
              )
            ),
          )
        ],
      ),
    );
  }
}