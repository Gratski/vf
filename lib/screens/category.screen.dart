import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {

  final int categoryId;
  final String categoryTitle;
  final String categoryDescription;

  CategoryScreen(this.categoryId, this.categoryTitle, this.categoryDescription);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            centerTitle: false,
            title: RichText(
              text: TextSpan(
                text: '${categoryTitle} \n',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                children: <TextSpan>[
                  TextSpan(text: categoryDescription, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
                ],
              ),
            ),
            floating: true,
            expandedHeight: 150.0,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(leading: Icon(Icons.volume_off), title: Text("Volume Off"),),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),

            ]),
          )
        ],
      ),
    );
  }
}