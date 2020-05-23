import 'package:ex_login/src/model/user_model.dart';
import 'package:ex_login/src/service/repository/base_repo.dart';

class MockRepo extends BaseRepo{
  
  @override
  Future login({String userName, String pass}) {
    var u = UserModel(user: userName,pass: pass,fullName: "$userName");
    return Future.value(u);
  }

}