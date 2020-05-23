import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  Home2({Key key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home2"),),
      body: Container(
        child: Text("Home2"),
      ),
    );
  }
}
