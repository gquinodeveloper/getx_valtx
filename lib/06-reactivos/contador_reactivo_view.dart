import 'package:app_getx_valtx/06-reactivos/contador_reactivo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContadorReactivoView extends StatelessWidget {
  const ContadorReactivoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorReactivoController>(
      init: ContadorReactivoController(),
      builder: (controller) {
        print("Construyendo widgets");
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text("Contador Reactivo"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Obx(() => Text(
                      "${controller.counter}",
                      style: Theme.of(context).textTheme.headline4,
                    )),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
