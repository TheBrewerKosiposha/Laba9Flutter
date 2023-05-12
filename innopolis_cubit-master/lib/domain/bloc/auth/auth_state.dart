part of 'auth_cubit.dart';

abstract class AuthState {}

class UnAuthorizedState extends AuthState {}

class AuthorizedState extends AuthState {
  final AuthData? authData;
//отвечает за получение авторизо или нет
  AuthorizedState(this.authData);
}
