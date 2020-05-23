import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ex_login/src/model/user_model.dart';

import 'package:ex_login/src/service/repository/base_repo.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final BaseRepo repo;

  LoginBloc({this.repo});

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if(event is LoginInitEvent) {
      //TODO Call api
      String user = event.user;
      String pass = event.pass;
      if(user.isEmpty || pass.isEmpty) {
        yield LoginFailState();
      }else {
        
        UserModel userModel = await repo.login(userName: event.user,pass: event.pass);
        
        yield LoginSuccessState(userModel: userModel);
      }
    }
  }
}
