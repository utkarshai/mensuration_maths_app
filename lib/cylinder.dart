

import 'package:flutter/material.dart';

class Cylinder extends StatefulWidget {
  @override
  _CylinderState createState() => _CylinderState();
}

class _CylinderState extends State<Cylinder> {
  TextEditingController textEditingController1 = new TextEditingController();
  TextEditingController textEditingController2 = new TextEditingController();

  //
  var r = 0;
  var ans;
  //int dif=0;
  
  var h = 0;
  //var ou3;
  String str;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("cylinder"),
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
                    labelText: "radius",
                    icon: Icon(Icons.power_input),
                  ),
                ),
                new TextField(
                  controller: textEditingController2,
                  keyboardType: TextInputType.number,
                  //
                  decoration: InputDecoration(
                    hintText: "in meters",
                    labelText: "height",
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
                          child: new Text("curved surface area"),
                          color: Colors.yellow,
                          //
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
    r = int.parse(textEditingController1.text);
    
    h = int.parse(textEditingController2.text);
    setState(() {
      ans = 2 * 3.14 * r * (h+r);
      str = "total suraface area";
    });

//    print("you got it $ou3");
  }

  void volume() {
    r = int.parse(textEditingController1.text);
    
    h = int.parse(textEditingController2.text);
    setState(() {
      ans = 3.14 * r* r* h;
      str = "volume";
    });
  }

  void lateralSurfaceArea() {
    r = int.parse(textEditingController1.text);
    h = int.parse(textEditingController2.text);
    
    setState(() {
      ans = 2* 3.14 * r* h;
      str = "curved surface area";
    });
  }

 

  void clear() {
    setState(() {
      textEditingController1.clear();
      textEditingController2.clear();
    
      ans = null;
    });
  }
}
 