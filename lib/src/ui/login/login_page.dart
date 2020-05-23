import 'package:ex_login/src/bloc/a.dart';
import 'package:ex_login/src/bloc/b.dart';
import 'package:ex_login/src/bloc/login/bloc/login_bloc.dart';
import 'package:ex_login/src/service/repository/repo.dart';
import 'package:ex_login/src/ui/home/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final edtUserController = TextEditingController();
  final edtPassController = TextEditingController();

  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();

  //final _loginBloc = GetIt.I<LoginBloc>();
  final _loginBloc = LoginBloc(Repo());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }

  login() {
    // if(edtUserController.text != '' && edtPassController.text != '') {
    //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
    // }else {
    //   print("Field is empty");
    // }
  }

  @override
  Widget build(BuildContext context) {
    Widget buildTextField(
        {String labelText, TextEditingController controller}) {
      return Container(
        margin: EdgeInsets.only(top: 8),
        child: TextFormField(
          maxLines: 1,
          textAlign: TextAlign.start,
          controller: controller,
          autofocus: false,
          style: TextStyle(color: Colors.grey),
          decoration: InputDecoration(
            filled: true,
            alignLabelWithHint: true,
            hasFloatingPlaceholder: false,
            //fillColor: Colors.grey.withOpacity(0.5),
            labelStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey)),
            labelText: labelText,
          ),
        ),
      );
    }

    Widget buildButton() {
      return FlatButton.icon(
        color: Colors.blue,
        onPressed: () {
          //login();
          _loginBloc.add(LoginInitEvent(
            user: edtUserController.text,
            pass: edtPassController.text,
          ));
        },
        icon: Icon(Icons.lock),
        label: Text("Login"),
      );
    }

    Widget buildWidget() {
      return BlocBuilder(
        bloc: _loginBloc,
        builder: (context, state) {
          if (state is LoginSuccessState) {
            return Text(state.toString());
          } else if(state is LoginFailState) {
            return Text("----");
          }
          else {
            return CircularProgressIndicator();
          }
        },
      );
    }

    return Scaffold(
        key: _scaffoldState,
        appBar: AppBar(
          title: Text("LoginPage"),
        ),
        body: BlocListener(
          bloc: _loginBloc,
          listener: (context, state) {
            print("State==$state");
            // if (state is LoginSuccessState) {
            //   // Navigator.of(context).push(
            //   //   MaterialPageRoute(
            //   //     builder: (context) => HomePage(),
            //   //   ),
            //   // );
            // }
            // if (state is LoginFailState) {
            //   _scaffoldState.currentState.showSnackBar(
            //     SnackBar(
            //       content: Text("User or pass incorrect!"),
            //     ),
            //   );
            // }
          },
          child: Column(
            children: <Widget>[
              buildTextField(
                labelText: "UserName",
                controller: edtUserController,
              ),
              buildTextField(
                labelText: "Password",
                controller: edtPassController,
              ),
              buildButton(),
              buildWidget()
            ],
          ),
        ));
  }
}
