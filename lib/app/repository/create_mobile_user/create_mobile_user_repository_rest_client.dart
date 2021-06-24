import 'package:dio/dio.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/repository_exception.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client.dart';
import 'package:vsaude_getx/app/models/create_mobile/create_mobile_user_model.dart';

import 'create_mobile_user_repository.dart';

class CreateMobileUserRepositoryRestClient
    implements CreateMobileUserRepository {
  RestClient _restClient;

  CreateMobileUserRepositoryRestClient({required RestClient restClient})
      : _restClient = restClient;
  @override
  Future<void> registerUser(CreateMobileUserModel createMobileUserModel) async {
    try {
      final result = await _restClient.post<CreateMobileUserModel>(
        '/CreateMobileUser',
        data: createMobileUserModel.toJson(),
      );
      print('********${result.data}*********');
    } on DioError catch (e, s) {
      print(e);
      print(s);
      throw RepositoryException();
    }
  }
}