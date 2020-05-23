
import 'package:ex_login/src/bloc/login/bloc/login_bloc.dart';
import 'package:ex_login/src/service/repository/repo.dart';
import 'package:ex_login/src/ui/login/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  


  @override
  void didChangeDependencies() {
    Future.delayed(Duration(milliseconds: 3000)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("SplashPage"),
        ),
      ),
    );
  }
}
