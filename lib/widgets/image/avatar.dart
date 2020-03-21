import 'package:flutter/material.dart';


class Avatar extends StatelessWidget {
  
  final double radius;
  final String imgUrl;
  final Color borderColor;

  Avatar(this.radius, this.imgUrl, this.borderColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: new BoxDecoration(
        color: borderColor,
        image: new DecorationImage(
          image: new NetworkImage(imgUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
        border: new Border.all(
          color: Colors.red,
          width: 2.0,
        ),
      ),
    );
  }

}