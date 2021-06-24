import 'package:dio/dio.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/repository_exception.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client.dart';

import 'login_repository.dart';

class LoginRepositoryRestClient implements LoginRepository {
  final RestClient _restClient;

  LoginRepositoryRestClient({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<LoginModel> singInApp(LoginModel loginModel) async {
    try {
      final result = await _restClient.post<LoginModel>(
        '/TokenAuth/AuthenticateMobileUser',
        data: loginModel.toJson(),
      );
      print('******${result.data}**********');
      return LoginModel.fromMap(loginModel.toMap());
    } on DioError catch (e, s) {
      print(e);
      print(s);
      throw RepositoryException();
    }
  }
}
