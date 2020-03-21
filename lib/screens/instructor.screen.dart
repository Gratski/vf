import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/styles/font.styles.dart';

class InstructorScreen extends StatelessWidget {
  
  final int id;
  final String name;
  final double rate;
  final String imgUrl;

  InstructorScreen(this.id, this.name, this.rate, this.imgUrl);

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
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Text(name, style: FontStyles.h2(Colors.black),),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('${rate} '),
                            Icon(Icons.star, color: Colors.yellow)
                          ],
                        )
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text('fdsf d fds fds f dsf d fs d fsd f sd fsd f d fs f sd f sf dsf d fs df s fs d sd f dsf s fsdf sd f fr ger vr e ver vr v rv fr v r vrfvv tvrvtv tvrvvtvrt vr rtvr tvr  rvtvr rtvtvrvtvrrtvr v tr vr rtv rt'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('QUOTE', style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('\"O fitness é para todos, sem excepção! Desde que adaptado ao ritmo e desejo de cada um.\"')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,),                    
                    child: Text('AULAS DE INSTRUTOR', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  // aulas de instrutor
                  Container(
                    child: FlatButton(
                            onPressed: () => {

                            },
                            child: Text('YOGA Para toda a Família', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                            color: VFColor.red_color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                          ),
                  ),
                  Container(
                    child: FlatButton(
                            onPressed: () => {

                            },
                            child: Text('Mantém-te em Forma!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                            color: VFColor.red_color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                          ),
                  ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}