import 'package:vsaude_getx/models/login/login_model.dart';

abstract class LoginRepository {
  Future<LoginModel> singInApp(LoginModel loginModel);
}
