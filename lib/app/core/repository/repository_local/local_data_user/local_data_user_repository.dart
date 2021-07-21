import 'package:vsaude_getx/app/core/models/login/login_model.dart';

abstract class LocalDataUserRepository {
  Future<bool> saveDataUser(LoginModel loginModel);
  Future<bool> getDataLocal(LoginModel loginModel);
}
