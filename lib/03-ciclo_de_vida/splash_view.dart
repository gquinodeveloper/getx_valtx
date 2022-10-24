import 'package:app_getx_valtx/03-ciclo_de_vida/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
const SplashView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller){
        print("Dibujando Widgets");
        return const Scaffold(
          backgroundColor: Colors.cyan,
          body: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}