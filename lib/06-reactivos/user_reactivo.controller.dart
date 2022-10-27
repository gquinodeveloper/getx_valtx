import 'package:app_getx_valtx/models/request_user_update_model.dart';
import 'package:app_getx_valtx/models/response_user_model.dart';
import 'package:app_getx_valtx/providers/user_provider.dart';
import 'package:get/get.dart';

class UserReactivoController extends GetxController {
  @override
  void onInit() {
    _loadUsers();
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

  RxBool isLoading = RxBool(false);
  RxList<Data> users = RxList([]);

  UserProvider obj = UserProvider();

  _loadUsers() async {
    isLoading.value = true;
    final response = await UserProvider.getAllUser();
    users.value = response.data ?? [];
    isLoading.value = false;
  }
}
