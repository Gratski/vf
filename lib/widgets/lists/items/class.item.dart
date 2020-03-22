import 'package:flutter/material.dart';
import 'package:mobileapp/screens/class.screen.dart';
import 'package:mobileapp/styles/colors/theme.dart';

class ClassItem extends StatelessWidget {
  
  final int id;

  ClassItem(this.id);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, 
          MaterialPageRoute(builder: (context) => ClassDetailsScreen(id, 'YOGA', 'Aulas para toda a família', 'https://cdn.shopify.com/s/files/1/1184/8924/files/Morgan_05_3000x2000_1800x.jpg'))
        );
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
    );
  }
}