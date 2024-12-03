import 'package:dartz/dartz.dart';
import 'package:task/core/errors/error_handler.dart';

import '../entities/user_entity.dart';

abstract class UserRepo {
   Future<Either<Failure, UserEntity>> getProfile() ;
}