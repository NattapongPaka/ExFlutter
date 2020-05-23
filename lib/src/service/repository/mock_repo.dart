import 'package:ex_login/src/model/user_model.dart';
import 'package:ex_login/src/service/repository/base_repo.dart';

class MockRepo extends BaseRepo{
  
  @override
  Future<UserModel> login({String userName, String pass}) {
    var u = UserModel(account: Account(firstName: "AAAA",lastName: "LastNameBB"));
    return Future.value(u);
  }

}