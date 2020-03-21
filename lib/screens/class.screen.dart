import 'package:flutter/material.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/styles/font.styles.dart';

class ClassScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey[100],
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: new BoxDecoration(
                        color: VFColor.red_color,
                        image: new DecorationImage(
                          image: new NetworkImage('https://image.shutterstock.com/image-photo/close-portrait-smiling-handsome-man-260nw-1011569245.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('YOGA Class', style: FontStyles.h2(Colors.black)),
                          Text('Nome de instrutor', style: FontStyles.h4(Colors.black)),
                          Text('Horário', style: FontStyles.h4(Colors.black)),
                          Text('KCAL Estimadas', style: FontStyles.h4(Colors.black)),
                          Text('Duração', style: FontStyles.h4(Colors.black)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('YOGA Class', style: FontStyles.h2(Colors.black)),
                          Text('Nome de instrutor', style: FontStyles.h4(Colors.black)),
                          Text('Horário', style: FontStyles.h4(Colors.black)),
                          Text('KCAL Estimadas', style: FontStyles.h4(Colors.black)),
                          Text('Duração', style: FontStyles.h4(Colors.black)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}