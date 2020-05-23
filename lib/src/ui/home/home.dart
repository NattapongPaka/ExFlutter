

import 'package:ex_login/src/bloc/a.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> mockList = [
    "A1",
    "A2",
    "A3",
    "A4",
  ];

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Container(
        height: 150,
        child: ListView.separated(
            
            addSemanticIndexes: true,
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.red,
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: mockList.length,
            itemBuilder: (context, index) {
              var listData = mockList[index];
              return Container(
                width: 200,
                height: 100,
                child: ListTile(
                  title: Text(listData),
                  subtitle: Text("sub==$index"),
                  
                  onTap: () {
                    var snakBar = SnackBar(content: Text("ClickIndex==$index"),);
                    _globalKey.currentState.showSnackBar(snakBar);
                  },
                ),
              );
            }),
      ),
    );
  }
}
