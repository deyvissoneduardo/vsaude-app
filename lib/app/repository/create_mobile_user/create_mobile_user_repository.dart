import 'package:vsaude_getx/app/models/create_mobile/create_mobile_user_model.dart';

abstract class CreateMobileUserRepository {
  Future<void> registerUser(CreateMobileUserModel createMobileUserModel);
}