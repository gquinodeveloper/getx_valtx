import 'package:get/get.dart';

class ContadorIdController extends GetxController {
  int counter = 0;

  void increments() {
    counter++;
    update([
      "counterText",
    ]);
  }
}
