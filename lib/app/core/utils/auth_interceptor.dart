import 'package:dio/dio.dart';

class AuthInterceptor extends InterceptorsWrapper {
  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // if (options.extra.containsKey(InterceptorsKeys.hasAuth)) {
    //   final token = await _localStorage.read<String>(StorageKeys.accessToken);
    //   options.headers.addAll({
    //     "Authorization": token,
    //   });
    // }

    return handler.next(options);
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async {
    // if (response.data != null &&
    //     (response.statusCode == 403 || response.statusCode == 401) &&
    //     !response.requestOptions.path.contains("authentication")) {
    //   _sessionStore.expireSession();
    // }

    return handler.next(response);
  }
}
