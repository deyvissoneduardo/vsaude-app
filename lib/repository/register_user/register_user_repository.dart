import 'package:vsaude_getx/models/register_user/register_user_model.dart';

abstract class RegisterUserRepository {
  Future<void> registerUser(RegisterUserModel registerUserModel);
}
