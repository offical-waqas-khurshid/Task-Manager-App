import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Database/ApiService.dart';
import 'AuthEvent.dart';
import 'AuthState.dart';
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ApiService apiService;

  AuthBloc(this.apiService) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is LoginEvent) {
      yield AuthLoading();
      try {
        final response = await apiService.login(event.username, event.password);
        yield AuthSuccess(response['message']);
      } catch (e) {
        yield AuthFailure(e.toString());
      }
    } else if (event is SignupEvent) {
      yield AuthLoading();
      try {
        final response = await apiService.signup(event.username, event.password);
        yield AuthSuccess(response['message']);
      } catch (e) {
        yield AuthFailure(e.toString());
      }
    }
  }
}
