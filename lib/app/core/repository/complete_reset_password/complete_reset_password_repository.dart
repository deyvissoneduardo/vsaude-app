import 'package:vsaude_getx/app/core/models/complete_reset_password/complete_reset_password_model.dart';
import 'package:vsaude_getx/app/core/rest_client/response/rest_client_response.dart';

abstract class CompleteResetPasswordRepository {
  Future<RestClientResponse> completResetPassword(
      CompleteResetPasswordModel completeResetPasswordModel);
}
