import 'package:dio/dio.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/repository_exception.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'login_repository.dart';

class LoginRepositoryRestClient implements LoginRepository {
  final RestClientService _restClient;

  LoginRepositoryRestClient({
    required RestClientService restClient,
  }) : _restClient = restClient;

  @override
  Future<LoginModel> singInApp(LoginModel loginModel) async {
    print('chegou aqui');
    try {
      print('entrou no try');
      print('json:::::${loginModel.toJson()}::::');
      await _restClient.post<LoginModel>(
        '/TokenAuth/AuthenticateMobileUser',
        data: loginModel.toJson(),
      );
      print('chegou aqui 2');
      return LoginModel.fromMap(loginModel.toMap());
    } on DioError catch (e, s) {
      print(e.message);
      print(e);
      print(s);
      throw RepositoryException();
    }
  }
}
