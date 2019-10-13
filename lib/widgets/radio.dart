import 'package:flutter/material.dart';

import '../main.dart';

class RadioState extends State<MyApp> {
  bool _value1 = false;
  bool _value2 = false;

  void _onVal1Set(bool value) => setState(() => (_value1 = value));

  void _onVal2Set(bool value) => setState(() => (_value2 = value));

  Widget makeSwitch() {
    Switch switch1 = new Switch(
        value: _value1, onChanged: _onVal1Set, activeColor: Colors.green);
    return switch1;
  }

  Widget makeMySwitchTile() {
    SwitchListTile switchListTile = new SwitchListTile(
      value: _value2,
      onChanged: _onVal2Set,
      title: new Text(
        "Turn on notification",
        style: new TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );
    return switchListTile;
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
            children: <Widget>[makeSwitch(), makeMySwitchTile()],
          ),
        ),
      ),
    );
  }
}
