import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/radio.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RadioState();
}



