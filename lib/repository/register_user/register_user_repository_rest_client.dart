import 'package:dio/dio.dart';
import 'package:vsaude_getx/core/exception/repository_exception.dart';
import 'package:vsaude_getx/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/models/register_user/register_user_model.dart';
import 'package:vsaude_getx/repository/register_user/register_user_repository.dart';

class RegisterUserRepositoryRestClient implements RegisterUserRepository {
  final RestClient _restClient;

  RegisterUserRepositoryRestClient({required RestClient restClient})
      : _restClient = restClient;
  @override
  Future<void> registerUser(RegisterUserModel registerUserModel) async {
    try {
      final result = await _restClient.post<RegisterUserModel>(
          '/CreateMobileUser',
          data: registerUserModel.toJson());
      print('********${result.data}*******');
    } on DioError catch (e, s) {
      print(e);
      print(s);
      throw RepositoryException();
    }
  }
}
