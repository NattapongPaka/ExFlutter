import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  Home3({Key key}) : super(key: key);

  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home3"),),
      body: Container(
        child: Text("Home3"),
      ),
    );
  }
}
