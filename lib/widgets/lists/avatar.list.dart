import 'package:flutter/material.dart';
import 'package:mobileapp/styles/colors/theme.dart';
import 'package:mobileapp/widgets/image/avatar.dart';
import 'package:mobileapp/globals/global_vars.dart' as globals;

class AvatarList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext context, int index) => Divider(
        indent: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Avatar(globals.AVATAR_RADIUS, 'https://via.placeholder.com/30', VFColor.TEXT_RED),
            Text('Relax')
          ],
        );
      },
    );
  }

}