import 'package:dio/dio.dart';

class CustomDioError extends DioError {
  CustomDioError()
      : super(
          requestOptions: RequestOptions(path: ''),
          error: Error(),
        );
}
