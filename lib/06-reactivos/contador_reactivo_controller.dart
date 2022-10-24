import 'package:get/get.dart';

class ContadorReactivoController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
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

  /*
  String dato;
  int dato;
  double dato;
  bool dato;
  Map
  List
   */
  RxString name = RxString("");
  
  RxInt counter = RxInt(5);
  void increment(){
    counter.value ++;
  }
}
