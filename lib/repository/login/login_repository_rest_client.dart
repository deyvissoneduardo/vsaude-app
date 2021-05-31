import 'package:dio/dio.dart';
import 'package:vsaude_getx/core/exception/repository_exception.dart';
import 'package:vsaude_getx/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/models/login/login_model.dart';
import 'package:vsaude_getx/repository/login/login_repository.dart';

class LoginRepositoryRestClient implements LoginRepository {
  final RestClient _restClient;

  LoginRepositoryRestClient({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<LoginModel> singInApp(LoginModel loginModel) async {
    try {
      final result = await _restClient.post('/AuthenticateMobileUser');
      return LoginModel.fromMap(result.data);
    } on DioError catch (e, s) {
      print(e);
      print(s);
      throw RepositoryException();
    }
  }
}
