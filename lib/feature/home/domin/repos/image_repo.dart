
import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/error_handler.dart';

abstract class ImageRepo {
  Future<Either<Failure, String>> uploadImage({required File imageFile});
}
