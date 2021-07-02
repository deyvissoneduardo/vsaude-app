import 'package:vsaude_getx/app/core/models/start_reset_password/start_reset_password_model.dart';

abstract class StartResetPasswordRepository {
  Future<StartResetPasswordModel> resetPassword(
      StartResetPasswordModel startResetPasswordModel);
}
