part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable{
  LoginState([List props = const<dynamic>[]]) : super(props);
}

class LoginInitial extends LoginState {}

class LoginSuccessState extends LoginState{
  
  final UserModel userModel;

  LoginSuccessState({this.userModel}) : super([userModel]);
  
  @override
  String toString() {
    return "${this.runtimeType.toString()} ${userModel.toJson()}";
  }
}

class LoginFailState extends LoginState{
  
  final String errorMsg;

  LoginFailState({this.errorMsg}) : super([errorMsg]);
  
  @override
  String toString() {
    return this.runtimeType.toString();
  }
}


