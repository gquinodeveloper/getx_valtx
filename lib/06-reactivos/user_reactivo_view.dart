import 'package:app_getx_valtx/06-reactivos/user_reactivo.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserReactivoView extends StatelessWidget {
  const UserReactivoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserReactivoController>(
      init: UserReactivoController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("User reactivo"),
          ),
          body: Obx(
            () => controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: controller.users.length,
                    itemBuilder: (context, index) {
                      final user = controller.users[index];
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 26.0,
                          backgroundImage: NetworkImage("${user.avatar}"),
                        ),
                        title: Text("${user.firstName} ${user.lastName}"),
                        subtitle: Text("${user.email}"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16.0,
                          color: Colors.blue,
                        ),
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
