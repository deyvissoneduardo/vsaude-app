import 'package:vsaude_getx/app/core/models/complete_reset_password/complete_reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/complete_reset_password/complete_reset_password_repository.dart';
import 'package:vsaude_getx/app/core/rest_client/response/rest_client_response.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';

class CompleteResetPasswordRestClient
    implements CompleteResetPasswordRepository {
  final RestClientService _restClientService;

  CompleteResetPasswordRestClient(
      {required RestClientService restClientService})
      : _restClientService = restClientService;

  @override
  Future<RestClientResponse> completResetPassword(
      CompleteResetPasswordModel completeResetPasswordModel) async {
    final result = await _restClientService.post(
        '/services/app/User/CompleteResetPassword',
        data: completeResetPasswordModel.toJson());
    return result;
  }
}
