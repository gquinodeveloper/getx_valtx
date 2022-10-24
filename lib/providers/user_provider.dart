import 'package:app_getx_valtx/models/response_user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  static Future<ResponseUserModel> getAllUser() async {
    var dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": 1,
        //"delay": 1,
      },
    );
    print("Termine de llamar al servicio");
    return ResponseUserModel.fromJson(response.data);
  }
}
