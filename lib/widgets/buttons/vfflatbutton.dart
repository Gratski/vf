import 'package:flutter/material.dart';
import 'package:mobileapp/styles/colors/theme.dart';

class VFFlatButton extends StatelessWidget {
  
  static const double radius = 10.0;
  final Function onTap;
  final String label;
  final bool filled;

  VFFlatButton(this.onTap, this.label, this.filled);  
  
  @override
  Widget build(BuildContext context) {
    if(filled) {
      return FlatButton(
        onPressed: onTap,
        child: Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        color: VFColor.red_color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius)
        ),
      );
    } else {
      return FlatButton(
        onPressed: onTap,
        child: Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: VFColor.red_color)),
        color: VFColor.white_color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(color: VFColor.red_color)
        ),
      );
    }
  }
}