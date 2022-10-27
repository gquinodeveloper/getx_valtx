import 'package:app_getx_valtx/models/response_user_model.dart';
import 'package:dio/dio.dart';

/*
https://Desarrollo.reqres.in/api/users
https://Qa.reqres.in/api/users
https://Producciónreqres.in/api/users
 */
class UserProvider {
  static Future<ResponseUserModel> getAllUser() async {
    var dio = Dio();
    final response = await dio.get(
      'https://Desarrollo.reqres.in/api/users',
      queryParameters: {
        "page": 1,
      },
    );
    print("Termine de llamar al servicio");
    return ResponseUserModel.fromJson(response.data);
  }
}
