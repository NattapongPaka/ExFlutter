part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {
  // LoginEvent([List props = const<dynamic>[]]) : super(props);
  LoginEvent([List props = const <dynamic>[]]) : super(props);
}

class LoginInitEvent extends LoginEvent {
  final String user;
  final String pass;

  LoginInitEvent({this.user, this.pass}) : super([user,pass]);

  @override
  String toString() {
    return this.runtimeType.toString();
  }
}
