import 'package:vsaude_getx/app/core/models/validade_reset_password/validade_reset_password_model.dart';

abstract class ValidadeResetPasswordRepository {
  Future<void> validateCodeResetPassoword(
      ValidadeResetPasswordModel validadeResetPasswordModel);
}
