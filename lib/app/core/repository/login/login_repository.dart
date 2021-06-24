import 'package:vsaude_getx/app/core/models/login/login_model.dart';

abstract class LoginRepository {
  Future<LoginModel> singInApp(LoginModel loginModel);
}
