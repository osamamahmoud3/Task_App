part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.signUpLoading() = SignUpLoading;

  const factory AuthState.signUpSuccess(
    final SignUpResponseBody signUpResponseBody,
  ) = SignUpSuccess;

  const factory AuthState.signUpFailure(
    final String errorMessage,
  ) = SignUpFailure;

  const factory AuthState.loginError(final String errorMessage) = LoginError;

  const factory AuthState.loginSuccess(final LoginResponseBody loginResponseBody) = LoginSuccess;

  const factory AuthState.loginLoading() = LoginLoading;
}
