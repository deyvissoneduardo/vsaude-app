import 'package:dio/dio.dart';
import 'package:vsaude_getx/app/core/models/create_mobile/create_mobile_user_model.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/repository_exception.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client.dart';

import 'create_mobile_user_repository.dart';

class CreateMobileUserRepositoryRestClient
    implements CreateMobileUserRepository {
  RestClient _restClient;

  CreateMobileUserRepositoryRestClient({required RestClient restClient})
      : _restClient = restClient;
  @override
  Future<void> registerUser(CreateMobileUserModel createMobileUserModel) async {
    try {
      await _restClient.post(
        '/services/app/User/CreateMobileUser',
        data: createMobileUserModel.toJson(),
      );
    } on DioError catch (e, s) {
      print(e);
      print(s);
      throw RepositoryException();
    }
  }
}
