import 'package:app_getx_valtx/contador/contador_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => const ContadorView());
    });

    super.onReady();
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }
}
