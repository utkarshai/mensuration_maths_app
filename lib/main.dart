import 'package:flutter/material.dart';
import 'package:mensuration_volume_perimeter/cone.dart';

import 'package:mensuration_volume_perimeter/sphere.dart';


import 'cube.dart';
import 'cuboid.dart';
import 'cylinder.dart';



void main() {
  runApp(MaterialApp(
    title: "mensuration",
    home: new Home(),
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}

class Home extends StatelessWidget {
  String str;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 4.0,
        title: Text("chosse your shape"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed:  ()=>  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Cone())),
              color: Colors.lightGreen,
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://dr282zn36sxxg.cloudfront.net/datastreams/f-d%3Aa7716dacae5a9e96bcfa171bbea8d39bd336482f0f364add89234f48%2BIMAGE_TINY%2BIMAGE_TINY.1",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("cone's measurement"),
                ],
              ),
            ),
            RaisedButton(
              color: Colors.amberAccent,
              onPressed:  ()=>  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Sphere())),
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCsi2AQ8Uf4bcakkxvix8Un6DZ6-T1jE1TJWF58W1_wlsLPNvdeg",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("sphere's measurement"),
                ],
              ),
            ),
            RaisedButton(
              onPressed:  ()=>  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Cuboid())),
              color: Colors.lightGreen,
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5sLzT_AxFpFaunJOhOcKndH-C-lzKu3sNUCE8J-bNiDhKC6bg6Q",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("cuboid's measurement"),
                ],
              ),
            ),
            RaisedButton(
              onPressed: ()=>  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Cube())),
              color: Colors.amberAccent,
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQevHtCTwN6YG0VWKJUn0kR3189IY-cEui1B_6T9u9dtZrMtFVs5Q",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("cube's measurement"),
                ],
              ),
            ),
            RaisedButton(
              onPressed:  ()=>  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Cylinder())),
              color: Colors.lightGreen,
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://previews.123rf.com/images/get4net/get4net1711/get4net171101038/90570757-cylinder-shape-rod.jpg",
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("cylinder's measurement"),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
               'make your choice \n               :)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            
          ], 
        ),
      ),
    );
  }

  
}
