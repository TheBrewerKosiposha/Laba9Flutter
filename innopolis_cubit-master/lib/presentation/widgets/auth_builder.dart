import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/bloc/auth/auth_cubit.dart';
//наша обёртка к bloc
class AuthCubitBuilder extends StatelessWidget {
  final WidgetBuilder buildAuthorizedState;
  final WidgetBuilder buildNotAuthorizedState;

  const AuthCubitBuilder({
    Key? key,
    required this.buildAuthorizedState,
    required this.buildNotAuthorizedState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //в зависимости от состояния (авториз или нет), назначает необходимый билдер
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthorizedState) {
          return buildAuthorizedState(context);
        }
        return buildNotAuthorizedState(context);
      },
    );
  }
}
