
import 'package:ex_login/src/model/user_model.dart';

abstract class BaseRepo {

  Future<UserModel> login({String userName,String pass});

}
