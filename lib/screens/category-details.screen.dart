import 'package:flutter/material.dart';
import 'package:mobileapp/screens/classes.screen.dart';
import 'package:mobileapp/screens/instructor.screen.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/styles/font.styles.dart';
import 'package:mobileapp/widgets/image/avatar.dart';
import 'package:mobileapp/widgets/lists/items/instructor.item.dart';

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
                              Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => ClassesScreen(title))
                              )
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
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),                    
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Text('INSTRUTORES')
                        ), 
                        Expanded(
                          flex: 2,                          
                          child: Text('ver todos', style: TextStyle(color: VFColor.red_color), textAlign: TextAlign.right,)
                        ),
                      ],
                    ),
                  ),
                  // lista de instrutores
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InstructorScreen(1, 'Nome de Instrutor', 4.5, 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg')))
                    },
                    child: InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  ),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                  InstructorItem(1, 'Nome de Instrutor', 'https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg')

              ]),
            ),
          )
        ],
      ),
    );
  }
}