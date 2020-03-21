import 'package:flutter/material.dart';
import 'package:mobileapp/styles/colors/theme.dart';

class CategoryListItem extends StatelessWidget {
  
  final String label;
  final String imgUrl;
  final Function onTap;

  CategoryListItem(this.label, this.imgUrl, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 150,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new NetworkImage(imgUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: new BorderRadius.all(Radius.circular(20)),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(10)),
                  color: VFColor.red_color
                ),
                child: ClipRRect(
                  borderRadius: new BorderRadius.all(Radius.circular(10)),
                  child: Text(label, style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
        ),
      )
    );
  }

}