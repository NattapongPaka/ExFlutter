import 'package:ex_login/src/bloc/a.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final a = GetIt.I<A>();

  @override
  void initState() { 
    var data = a.count;
    print("Home==$data==${a.hashCode}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Text("HomePage"),
    );
  }
}
