import 'package:dartz/dartz.dart';
import 'package:task/core/errors/error_handler.dart';
import 'package:task/core/network/api_service.dart';
import 'package:task/feature/home/data/models/user_model.dart';
import 'package:task/feature/home/domin/entities/user_entity.dart';
import 'package:task/feature/home/domin/repos/user_repo.dart';

import '../../../../core/network/api_constant.dart';

class UserRepoImpl implements UserRepo {
  final ApiService apiService;

  UserRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, UserEntity>> getProfile() async {
    try {
      final response = await apiService.get(endPoint: ApiConstant.getProfile);
      return Right(UserModel.fromJson(response).todoEntity());
    } catch (e) {
      return Left(ServerFailure(errorMsg: e.toString()));
    }
  }
}
