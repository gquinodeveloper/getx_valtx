import 'package:app_getx_valtx/01-contador/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContadorView extends StatelessWidget {
  const ContadorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorController>(
      init: ContadorController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Contador con GETX"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed:(){
              controller.increment();
            } ,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
