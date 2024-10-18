import 'dart:developer';

import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_remote_datasource.dart';
import 'package:flashlight_pos_app/presentation/auth/data/models/response/auth_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasouce authRemoteDataSource;

  LoginBloc(
    this.authRemoteDataSource,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      try {
        emit(const _Loading());

        final response = await authRemoteDataSource.login(
          email: event.email,
          password: event.password,
        );

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_Success(r)),
        );
      } catch (e) {
        log('Auth Error : ${e.toString()}');
      }
    });
  }
}
