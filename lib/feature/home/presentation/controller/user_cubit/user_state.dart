part of 'user_cubit.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.getUserProfileLoading() = GetUserProfileLoading;

  const factory UserState.getUserProfileSuccess(
    UserEntity userEntity,
  ) = GetUserProfileSuccess;

  const factory UserState.getUSerProfileFailure(
    String errorMessage,
  ) = GetUserProfileFailure;

}
