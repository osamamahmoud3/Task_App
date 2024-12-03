import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task/core/network/api_service.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../core/network/api_constant.dart';
import '../../domin/repos/image_repo.dart';

class ImageRepoImpl implements ImageRepo {
  final ApiService apiService;
  ImageRepoImpl(this.apiService);
  @override
  Future<Either<Failure, String>> uploadImage({required File imageFile}) async {
    try {
      log('image path : $imageFile');
      List<int> imageBytes = await imageFile.readAsBytes();
      String base64Image = base64Encode(imageBytes);
      final url = await apiService.post(
          header: {
            'Authorization': 'Bearer ${ApiConstant.token}',
            'Accept': 'multipart/form-data',
          },
          endPoint: ApiConstant.uploadImage,
          body: {'image': imageFile.path});
      return Right(url['image']);
    } catch (e) {
      return Left(
          ServerFailure(errorMsg: 'Error according while uploading image'));
    }
  }
}
