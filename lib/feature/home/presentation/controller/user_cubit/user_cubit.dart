import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domin/entities/user_entity.dart';
import '../../../domin/repos/user_repo.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepo userRepo;
  UserCubit(this.userRepo) : super(const UserState.initial());

  Future<void> getUserProfile() async {
    emit(const UserState.getUserProfileLoading());
    final result = await userRepo.getProfile();
    result.fold(
      (l) => emit(UserState.getUSerProfileFailure(l.errorMsg)),
      (r) => emit(UserState.getUserProfileSuccess(r)),
    );
  }
}
