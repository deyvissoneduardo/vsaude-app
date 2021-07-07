import 'package:dio/dio.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'login_repository.dart';

class LoginRepositoryRestClient implements LoginRepository {
  final RestClientService _restClient;

  LoginRepositoryRestClient({
    required RestClientService restClient,
  }) : _restClient = restClient;

  @override
  Future<LoginModel> singInApp(LoginModel loginModel) async {
    try {
      await _restClient.post<LoginModel>(
        '/TokenAuth/AuthenticateMobileUser',
        data: loginModel.toJson(),
      );
      return LoginModel.fromMap(loginModel.toMap());
    } on DioError catch (e) {
      print('dento do repo');
      return e.response!.data;
    }
  }
}
