import 'package:app_getx_valtx/models/response_user_model.dart';
import 'package:get/get.dart';

class DetailUserController extends GetxController {

  Data user = Data();

  
  @override
  void onInit() {
    user = Get.arguments as Data;
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

}