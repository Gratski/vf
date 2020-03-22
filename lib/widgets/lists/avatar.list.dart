import 'package:flutter/material.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/widgets/image/avatar.dart';
import 'package:mobileapp/globals/global_vars.dart' as globals;

class AvatarList extends StatelessWidget {

  final Function onTap;

  AvatarList(this.onTap);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext context, int index) => Divider(
        indent: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        if(index < 2) {
          return GestureDetector(
            onTap: () {
              onTap.call(context, 'YOGA');
            },
            child: Column(
              children: <Widget>[
                Avatar(globals.AVATAR_RADIUS, 'https://via.placeholder.com/30', VFColor.green_color),
                Text('YOGA', style: TextStyle(fontSize: 12))
              ],
            )
          );
        } else {
          return Column(
            children: <Widget>[
              Avatar(globals.AVATAR_RADIUS, 'https://via.placeholder.com/30', VFColor.red_color),
              Text('HIIT', style: TextStyle(fontSize: 12))
            ],
          );
        }
      },
    );
  }

}