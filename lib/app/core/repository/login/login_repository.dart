import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/models/reset_password/reset_password_model.dart';

abstract class LoginRepository {
  Future<LoginModel> singInApp(LoginModel loginModel);
  Future<void> resetPassword(ResetPasswordModel resetPasswordModel);
}
