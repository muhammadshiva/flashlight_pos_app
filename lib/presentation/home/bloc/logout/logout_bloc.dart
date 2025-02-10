import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_remote_datasource.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthRemoteDatasouce authRemoteDatasouce;

  LogoutBloc(
    this.authRemoteDatasouce,
  ) : super(const _Initial()) {
    on<LogoutEvent>((event, emit) async {
      try {
        emit(const _Loading());

        final response = await authRemoteDatasouce.logout();

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
