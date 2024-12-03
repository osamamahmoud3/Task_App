import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_constant.dart';
import 'env_variables.dart';
import 'shared_prefs.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;
  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();

      myApiProvider();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.baseUrl = Env.baseUrl;
  }

  static myApiProvider() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers = {
         
            'Authorization': 'Bearer ${ApiConstant.token}',
          };
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final newAccessToken = await refreshToken();
            if (newAccessToken != null) {
              dio?.options.headers = {
             
                'Authorization': 'Bearer $newAccessToken',
              };
              return handler.resolve(
                await dio!.fetch(error.requestOptions),
              );
            }
          }

          return handler.next(error);
        },
      ),
    );
  }

  static Future<String?> refreshToken() async {
    try {
      SharedPrefs.getFromCache(key: 'refreshToken');
      var response = await dio?.get(
          ApiConstant.refreshTokenEndPoint + ApiConstant.refreshToken,
          options: Options(
            headers: {
              'Accept': 'application/json',
              'Authorization': 'Bearer ${ApiConstant.refreshToken}',
            },
          ));
      SharedPrefs.insertToCache(
        key: 'token',
        value: response?.data['access_token'],
      );
      ApiConstant.token = await SharedPrefs.getFromCache(key: 'token');
      return response?.data['access_token'];
    } catch (e) {
      SharedPrefs.deleteFromCache();
    }
    return null;
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
