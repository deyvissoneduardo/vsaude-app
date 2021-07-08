import 'package:vsaude_getx/app/core/models/validade_reset_password/validade_reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/validade_reset_password/validade_reset_password_repository.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/rest_client_exception.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';

class ValidadeResetPasswordRestClient
    implements ValidadeResetPasswordRepository {
  final RestClientService _restClient;

  ValidadeResetPasswordRestClient({required RestClientService restClient})
      : _restClient = restClient;
  @override
  Future<bool> validateCodeResetPassoword(
      ValidadeResetPasswordModel validadeResetPasswordModel) async {
    try {
      await _restClient.post(
        '/services/app/User/ValidateResetPasswordCode',
        data: validadeResetPasswordModel.toJson(),
      );
      return true;
    } on RestClientException catch (e) {
      throw RestClientException(error: e.error);
    }
  }
}
