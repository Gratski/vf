import 'package:flutter/material.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/widgets/image/avatar.dart';
import 'package:mobileapp/globals/global_vars.dart' as globals;

class InstructorItem extends StatelessWidget {

  final int id;
  final String name;
  final String imgUrl;

  InstructorItem(this.id, this.name, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Avatar(
              50.0,
              imgUrl,
              VFColor.red_color
            ),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Nome de Instrutor'),
            )
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('4.5 '),
                Icon(Icons.star, color: Colors.yellow,)
              ],
            )
          ),
        ],
      ),
    );
  }
}