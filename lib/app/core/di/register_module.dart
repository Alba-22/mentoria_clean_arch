import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @injectable
  Dio get dio => Dio();

  @injectable
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();
}
