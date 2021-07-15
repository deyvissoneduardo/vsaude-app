import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/models/reset_password/reset_password_model.dart';
import 'package:vsaude_getx/app/core/repository/login/login_result.dart';

abstract class LoginRepository {
  Future<LoginResult> singInApp(LoginModel loginModel);
  Future<void> resetPassword(ResetPasswordModel resetPasswordModel);
}
