import 'package:app_getx_valtx/models/response_user_model.dart';
import 'package:app_getx_valtx/providers/user_provider.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  //UserProvider _apiProvider = UserProvider();

  ResponseUserModel user = ResponseUserModel();
  bool isLoading = false;
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

  _loadUsers() async {
    isLoading = true;
    user = await UserProvider.getAllUser();
    isLoading = false;
    update(["idUsers"]);
  }
}
