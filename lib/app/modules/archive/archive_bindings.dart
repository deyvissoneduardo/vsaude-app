import 'package:get/get.dart';
import 'package:vsaude_getx/app/core/repository/repository_local/local_data_user/local_data_user_rest_client.dart';
import 'package:vsaude_getx/app/core/rest_client/rest_client_service.dart';
import 'package:vsaude_getx/app/modules/bottom_page/bottom_page_controller.dart';
import './archive_controller.dart';

class ArchiveBindings implements Bindings {
  @override
  void dependencies() {
    Get.delete();
    Get.create(() => ArchiveController());

    Get.put<RestClientService>(RestClientService());
    Get.put<LocalDataUserRestClient>(LocalDataUserRestClient());

    Get.put<ArchiveController>(ArchiveController());
    Get.put<BottomPageController>(BottomPageController());
  }
}
