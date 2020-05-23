import 'package:ex_login/src/bloc/a.dart';
import 'package:ex_login/src/bloc/login/bloc/login_bloc.dart';
import 'package:ex_login/src/service/repository/mock_repo.dart';
import 'package:ex_login/src/service/repository/repo.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class Injection {
  
  static final _getIt = GetIt.instance;

  static init() async {

    _getIt.registerSingleton(LoginBloc(MockRepo()));
    
    _getIt.registerSingleton(A(count: 1));
  }

}