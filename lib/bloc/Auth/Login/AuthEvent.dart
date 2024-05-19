import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginEvent extends AuthEvent {
  final String username;
  final String password;

  const LoginEvent(this.username, this.password);

  @override
  List<Object> get props => [username, password];
}

class SignupEvent extends AuthEvent {
  final String username;
  final String password;

  const SignupEvent(this.username, this.password);

  @override
  List<Object> get props => [username, password];
}
