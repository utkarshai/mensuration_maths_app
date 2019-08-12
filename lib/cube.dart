import 'dart:math';

import 'package:flutter/material.dart';

class Cube extends StatefulWidget {
  @override
  _CubeState createState() => _CubeState();
}

class _CubeState extends State<Cube> {
  TextEditingController textEditingController1 = new TextEditingController();
  //
  var l = 0;
  var ans;
  //int dif=0;
 
  //var ou3;
  String str;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("cube"),
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
   
    setState(() {
      ans = 6*l*l;
      str = "total suraface area";
    });

//    print("you got it $ou3");
  }

  void volume() {
    l = int.parse(textEditingController1.text);
   
    setState(() {
      ans = l * l * l;
      str = "volume";
    });
  }

  void lateralSurfaceArea() {
    l = int.parse(textEditingController1.text);
    
    setState(() {
      ans = 4*l*l;
      str = "lateral surface area";
    });
  }

  void diagonal() {
    l = int.parse(textEditingController1.text);
    setState(() {
      str = "diagonal";
      ans = l*sqrt(3);
    });
    //
  }

  void clear() {
    setState(() {
      textEditingController1.clear();
      ans = null;
    });
  }
}
 