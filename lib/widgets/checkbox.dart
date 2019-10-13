import 'package:flutter/material.dart';

import '../main.dart';

class StateCheckBox extends State<MyApp> {
  bool _value1 = false;
  bool _value2 = false;

  void _onVal1Changed(bool value) => setState(() => (_value1 = value));

  void _onVal2Changed(bool value) => setState(() => (_value2 = value));

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
              new Checkbox(value: _value1, onChanged: _onVal1Changed),
              // nothing else you could specify here

              new CheckboxListTile(
                value: _value2,
                onChanged: _onVal2Changed,
                title: new Text("Flutter Developer"),
                subtitle: new Text("2 year experience required"),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.red,
                secondary: new Icon(Icons.people),
              )
            ],
          ),
        ),
      ),
    );
  }
}
