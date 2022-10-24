import 'package:app_getx_valtx/05-pasar_datos/detail_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailUserView extends StatelessWidget {
  const DetailUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailUserController>(
        init: DetailUserController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Detalle de usuario"),
            ),
            body: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(controller.user.avatar ?? ""),
                  ),
                  Text(
                    "${controller.user.firstName}",
                    style: const TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                  Text("${controller.user.email}"),
                ],
              ),
            ),
          );
        });
  }
}
