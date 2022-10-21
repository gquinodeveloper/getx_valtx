import 'package:app_getx_valtx/actualizacion_id/contador_id_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContadorIdView extends StatelessWidget {
  const ContadorIdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorIdController>(
      init: ContadorIdController(),
      builder: (controller) {
        print("Construyendo widgets");
        return Scaffold(
          appBar: AppBar(
            title: Text("Contador id GETX"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                GetBuilder<ContadorIdController>(
                  id: "counterText",
                  builder: (controller2) {
                    print("Construyendo text");
                    return Text(
                      '${controller.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.increments();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
