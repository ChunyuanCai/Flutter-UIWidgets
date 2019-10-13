import 'package:flutter/material.dart';

import '../main.dart';

class ButtonState extends State<MyApp> {
  String _value = "Hello World";

  void onPressed() {
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new IconButton(icon: new Icon(Icons.add), onPressed: onPressed)
            ],
          ),
        ),
      ),
    );
  }
}
