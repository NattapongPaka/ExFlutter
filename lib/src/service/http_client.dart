import 'package:dio/dio.dart';
import 'package:ex_login/src/util/constant.dart';

class HttpClient {
  Dio get client {
    Dio dio = Dio()
      ..options.baseUrl = "${Constant.baseURL}"
      ..options.connectTimeout = 30 * 1000
      ..options.receiveTimeout = 30 * 1000
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options) async {
            //logger.d("==== header => ${options.headers}");
            //logger.d("==== path => ${options.path}");
            //final user = await secureStorage.read(key: NameboxKey.user);
            //LoginResponse currentUser;
            // if (user != null && user.isNotEmpty) {
            //   currentUser = LoginResponse.fromJson(jsonDecode(user));
            //   options.headers.addAll(
            //     {"Authorization": "Bearer ${currentUser.token}"},
            //   );
            // }
            return options;
          },
          onResponse: (Response response) async {
            //logger.i("onResponse: $response");
          },
        ),
      );
    return dio;
  }
}