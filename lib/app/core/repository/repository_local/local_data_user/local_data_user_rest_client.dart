import 'package:shared_preferences/shared_preferences.dart';
import 'package:vsaude_getx/app/core/models/login/login_model.dart';
import 'package:vsaude_getx/app/core/repository/repository_local/local_data_user/local_data_user_repository.dart';
import 'package:vsaude_getx/app/core/rest_client/exception/rest_client_exception.dart';

class LocalDataUserRestClient implements LocalDataUserRepository {
  @override
  Future<bool> saveDataUser(LoginModel loginModel) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setString('user', loginModel.toJson());
      return true;
    } on RestClientException catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> getDataLocal(LoginModel loginModel) async {
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.getString(loginModel.toJson());
      return true;
    } on RestClientException catch (e) {
      print(e);
      return false;
    }
  }
}
