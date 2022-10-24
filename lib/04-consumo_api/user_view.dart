import 'package:app_getx_valtx/04-consumo_api/user_controller.dart';
import 'package:app_getx_valtx/05-pasar_datos/detail_user_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      init: UserController(),
      builder: (controller) {
        print("Construyendo widgets");
        return Scaffold(
          appBar: AppBar(
            title: const Text("Users"),
          ),
          body: GetBuilder<UserController>(
              id: "idUsers",
              builder: (_) {
                print("Mostrando Lista");
                return controller.isLoading == true
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: controller.user.data!.length,
                        itemBuilder: (context, index) {
                          final user = controller.user.data?[index];
                          return ListTile(
                            onTap: () {
                              Get.to(() => const DetailUserView(), arguments: user);
                            },
                            leading: CircleAvatar(
                              radius: 26.0,
                              backgroundImage: NetworkImage("${user!.avatar}"),
                            ),
                            title: Text("${user.firstName} ${user.lastName}"),
                            subtitle: Text("${user.email}"),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                              color: Colors.blue,
                            ),
                            /* trailing: GestureDetector(
                              onTap: (){
                                print("Click con GestureDector");
                              },
                              onLongPress: (){
                                print("Click con onLongPress");
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ), */
                          );
                        },
                      );
              }),
        );
      },
    );
  }
}
