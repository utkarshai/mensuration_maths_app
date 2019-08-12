import 'dart:math';

import 'package:flutter/material.dart';

class Cuboid extends StatefulWidget {
  @override
  _CuboidState createState() => _CuboidState();
}

class _CuboidState extends State<Cuboid> {
  TextEditingController textEditingController1 = new TextEditingController();
  TextEditingController textEditingController2 = new TextEditingController();
  TextEditingController textEditingController3 = new TextEditingController();
  //
  var l = 0;
  var ans;
  //int dif=0;
  var b = 0;
  var h = 0;
  //var ou3;
  String str;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("cuboid"),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.green),
      ),
      body: ListView(
        //
        children: <Widget>[
          new Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                  top: 10.0, left: 90.0, right: 0.0, bottom: 0.0),
              child: new ListTile(
                title: new Text(
                  "$str is: $ans",
                  style: TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0),
                ),
              )),
          new Container(
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: textEditingController1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "in meters",
                    labelText: "length",
                    icon: Icon(Icons.power_input),
                  ),
                ),
                new TextField(
                  controller: textEditingController2,
                  keyboardType: TextInputType.number,
                  //
                  decoration: InputDecoration(
                    hintText: "in meters",
                    labelText: "breadth",
                    icon: Icon(Icons.power_input),
                  ),
                ),
                new TextField(
                  controller: textEditingController3,
                  keyboardType: TextInputType.number,
                  //
                  decoration: InputDecoration(
                    hintText: "in meters",
                    labelText: "heigth",
                    icon: Icon(Icons.power_input),
                  ),
                ),
                new Container(
                    padding: EdgeInsets.only(
                        top: 10.0, right: 50.0, left: 70.0, bottom: 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new FlatButton(
                          onPressed: volume,
                          child: new Text("volume"),
                          color: Colors.yellow,
                        ),

                        

                        new FlatButton(
                          onPressed: totalSurfaceArea,
                          child: new Text("total surface area"),
                          color: Colors.yellow,
                        ),

                        

                        new FlatButton(
                          onPressed: lateralSurfaceArea,
                          child: new Text("lateral surface area"),
                          color: Colors.yellow,
                          //
                        ),
                        
                        new FlatButton(
                          onPressed: diagonal,
                          child: Text("diagonal"),
                          color: Colors.yellow,
                        ),

                  
                        //

                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new FlatButton(
                                onPressed: clear,
                                child: Text(
                                  "clear",
                                  style: TextStyle(
                                    color: Colors.lightGreenAccent,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ))
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  void totalSurfaceArea() {
    l = int.parse(textEditingController1.text);
    b = int.parse(textEditingController2.text);
    h = int.parse(textEditingController3.text);
    setState(() {
      ans = 2 * ((l * b) + (b * h) + (h * l));
      str = "total suraface area";
    });

//    print("you got it $ou3");
  }

  void volume() {
    l = int.parse(textEditingController1.text);
    b = int.parse(textEditingController2.text);
    h = int.parse(textEditingController3.text);
    setState(() {
      ans = l * b * h;
      str = "volume";
    });
  }

  void lateralSurfaceArea() {
    l = int.parse(textEditingController1.text);
    b = int.parse(textEditingController2.text);
    h = int.parse(textEditingController3.text);
    setState(() {
      ans = 2 * h * (l + b);
      str = "lateral surface area";
    });
  }

  void diagonal() {
    l = int.parse(textEditingController1.text);
    b = int.parse(textEditingController2.text);
    h = int.parse(textEditingController3.text);
    setState(() {
      str = "diagonal";
      ans = sqrt(l * l + b * b + h * h);
    });
    //
  }

  void clear() {
    setState(() {
      textEditingController1.clear();
      textEditingController2.clear();
      textEditingController3.clear();
      ans = null;
    });
  }
}
 