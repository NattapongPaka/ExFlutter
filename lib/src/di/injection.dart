import 'package:ex_login/src/bloc/a.dart';
import 'package:ex_login/src/bloc/login/bloc/login_bloc.dart';
import 'package:ex_login/src/service/http_client.dart';
import 'package:ex_login/src/service/repository/mock_repo.dart';
import 'package:ex_login/src/service/repository/repo.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await _initCore();
  await _initService();

  //sl.registerSingleton(A(count: 1));
  // _getIt.registerSingleton(MockRepo());
}

Future<void> _initCore() async {
  sl.registerSingleton(HttpClient());
}

Future<void> _initService() async {
  //sl.registerSingleton(Repo(httpClient: sl()));

  sl.registerSingleton(LoginBloc(repo: Repo(httpClient: sl())));
}
