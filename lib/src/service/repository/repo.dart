import 'dart:io';
import 'package:dio/dio.dart';
import 'package:ex_login/src/model/user_model.dart';
import 'package:ex_login/src/service/http_client.dart';
import 'package:ex_login/src/service/repository/base_repo.dart';
import 'package:ex_login/src/util/constant.dart';

class Repo extends BaseRepo {

  HttpClient httpClient;

  Repo({
    this.httpClient,
  });

  @override
  Future<UserModel> login({String userName, String pass}) async{
    
    Response result = await httpClient.client.get(Constant.apiLogin);
    try {
      if(result.statusCode == HttpStatus.ok) {
        return UserModel.fromJson(result.data);
      }
    }catch(e) {
      print(e);
    }
     return null;
    // on DioError catch (e) {
    //   print(e);

    //   return null;
    // }

  }
}
