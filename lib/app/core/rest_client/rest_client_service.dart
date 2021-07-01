import 'package:dio/dio.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/rest_client_exception.dart';
import 'package:vsaude_getx/app/core/rest_client/intercptor/custom_interceptor.dart';

import 'rest_client.dart';
import 'response/rest_client_response.dart';

class RestClientService implements RestClient {
  late Dio _dio;
  static final _baseOptions = BaseOptions(
    baseUrl: 'https://api.vsaude.com.br/api',
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
      print(e.response?.statusCode);
      print(":::${e.response?.data}:::");
      print(":::${e.response?.data['error']['message']}:::");
      // onRespose(e);
      _dio.interceptors.add(CustomInterceptor.error(e));
      throw RestClientException(
        message: e.response?.statusMessage,
        statusCode: e.response?.statusCode,
      );
    }
  }

  // static void onRespose(DioError e) {
  //   if (e.response?.data['error']['message'] == 'InvalidPassword') {
  //     Get.dialog(AlertDialog(
  //       title: Text('Senha Incorreta'),
  //       actions: [TextButton(onPressed: () => Get.back(), child: Text('OK'))],
  //     ));
  //   }

  //   if (e.response?.data['error']['message'] ==
  //       'InvalidUserNameOrEmailAddress') {
  //     Get.dialog(AlertDialog(
  //       title: Text('Email Invalido'),
  //       actions: [TextButton(onPressed: () => Get.back(), child: Text('OK'))],
  //     ));
  //   }
  // }
}
