import 'package:flashlight_pos_app/presentation/auth/data/datasources/auth_remote_datasource.dart';
import 'package:flashlight_pos_app/presentation/auth/data/models/response/auth_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasouce authRemoteDataSource;

  LoginBloc(
    this.authRemoteDataSource,
  ) : super(const LoginState()) {
    on<_Login>(
      (event, emit) async {
        try {
          emit(state.copyWith(isLoading: true));

          final response = await authRemoteDataSource.login(
            email: event.email,
            password: event.password,
          );

          response.fold(
            (l) => emit(state.copyWith(isLoading: false, errorMessage: l)),
            (r) => emit(state.copyWith(isLoading: false, authResponseModel: r)),
          );
        } catch (e) {
          emit(
            state.copyWith(isLoading: false, errorMessage: 'An error occurred'),
          );
        }
      },
    );
  }
}
