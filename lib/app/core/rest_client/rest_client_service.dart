import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rest_client.dart';
import 'response/rest_client_response.dart';

class RestClientService implements RestClient {
  late Dio _dio;
  static final _baseOptions = BaseOptions(
    baseUrl: 'https://hml.vsaude.com.br/api',
  );

  RestClientService() {
    _dio = Dio(_baseOptions);
  }

  Dio get dio => _dio;

  @override
  Future<RestClientResponse<T>> post<T>(String path,
      {data,
      Options? options,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      return RestClientResponse(
        data: response.data,
        statusCode: response.statusCode,
        message: response.statusMessage,
      );
    } on DioError catch (e) {
      print('dento do service');
      error(e);
      return e.error;
    }
  }

  static error(DioError error) {
    if (error.response?.data['error']['message'] == 'InvalidPassword') {
      Get.dialog(AlertDialog(
        title: Text('Senha Incorreta'),
        content: Text('${error.response!.data}'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('OK'),
          ),
        ],
      ));
    }

    if (error.response?.data['error']['message'] ==
        'InvalidUserNameOrEmailAddress') {
      Get.dialog(AlertDialog(
        title: Text('Email Invalido'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('OK'),
          ),
        ],
      ));
    }
  }
}
