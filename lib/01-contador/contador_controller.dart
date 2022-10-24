import 'package:get/get.dart';

class ContadorController extends GetxController {
  int counter = 10;

  void increment(){
    counter++;
    update();
  }
}