part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    AuthModel? authResponseModel,
    String? errorMessage,
    @Default(false) bool isLoading,
  }) = _LoginState;
}
