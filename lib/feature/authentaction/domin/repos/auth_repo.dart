import 'package:dartz/dartz.dart';
import 'package:task/feature/authentaction/data/models/signup_response_body.dart';

import '../../../../core/errors/error_handler.dart';
import '../../data/models/login_request_body.dart';
import '../../data/models/login_response_body.dart';
import '../../data/models/signup_request_body.dart';

abstract class AuthRepo {
  Future<Either<Failure, SignUpResponseBody>> signUp(
      SignupRequestBody signUpRequestBody);

      Future<Either<Failure, LoginResponseBody>> login(LoginRequestBody loginRequestBody);
       
}
