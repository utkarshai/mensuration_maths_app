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
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        children: <String>[
'cone',
'cube',
'cuboid',
'cylinder',
'sphere',
'choose one of them'
        ].map((String a){
return RaisedButton(
  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
  child: Column(
   children: <Widget>[
a=="cone"?
Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXKDQDGTJVfG8oDPO0TArywaqCLvOjxZ7wIVH5hs13pJwZ1__lww", height: 100.0, width: 100.0,):
(a=='cuboid'?Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXFV4wH7wlM7-TQOw4lEfJ3W5W5LykegjXQbc_8TUrxW-2F48_bA", height: 100.0, width: 100.0,)
:(a=="cube"?Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4jr_iv93qUH6OPYdJc4ieWbNk_9d-Nh1pJLya5rUktL4BGLsmlA", height: 100.0, width: 100.0,)
:(a=="cylinder"?Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmD1xB7-CY_YAhoWeZCrx4WMIOpK4QVuMR4peXxvxECKs4LYFl",height: 100.0, width: 100.0,)
:(a=="sphere"?Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKxom5DLNKfSVyF95lOUEUQgAoHVPrXNIowml469IZbrmqhIXL", height: 100.0, width: 100.0,):Container(
  child: Column(children: <Widget>[
    SizedBox(
      height: 50.0,
    ),
     Text(":)",style: TextStyle(fontSize: 30.0, color: Colors.black),),
  ],
   
)))))),
     Text(a, style: TextStyle(color: Colors.black),)
   ],
), 
color: Colors.white,
onPressed:()=>  Navigator.push(context, MaterialPageRoute(builder: (context)=> 
a=="cone"?
Cone():
(a=='cuboid'?Cuboid():(a=="cube"?Cube():(a=="cylinder"?Cylinder():Sphere())))
)),);
        }).toList(),
      )
    );
  }  
}
